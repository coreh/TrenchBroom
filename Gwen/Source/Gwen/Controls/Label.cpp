/*
 GWEN
 Copyright (c) 2010 Facepunch Studios
 See license in Gwen.h
 */


#include "Gwen/Gwen.h"
#include "Gwen/Controls/Label.h"
#include "Gwen/Utility.h"

using namespace Gwen;
using namespace Gwen::Controls;

GWEN_CONTROL_CONSTRUCTOR( Label )
{
	m_Text = new ControlsInternal::Text( this );
	m_Text->SetFont( GetSkin()->GetDefaultFont() );
    
	SetMouseInputEnabled( false );
	SetBounds( 0, 0, 100, 10 );
	SetAlignment( Gwen::Pos::Left | Gwen::Pos::Top );
}

void Label::Layout( Skin::Base* /*skin*/ )
{
	
	int iAlign = m_iAlign;
    
	int x = m_rTextPadding.left + m_Padding.left;
	int y = m_rTextPadding.top + m_Padding.top;
    
	if ( iAlign & Pos::Right ) x = Width() - m_Text->Width() - m_rTextPadding.right - m_Padding.right;
	if ( iAlign & Pos::CenterH ) x = (m_rTextPadding.left + m_Padding.left) + ((Width() - m_Text->Width() - m_rTextPadding.left - m_Padding.left - m_rTextPadding.right - m_Padding.right ) * 0.5f);
    
	if ( iAlign & Pos::CenterV ) y = (m_rTextPadding.top + m_Padding.top) + ((Height() - m_Text->Height()) * 0.5f)  - m_rTextPadding.bottom - m_Padding.bottom;
	if ( iAlign & Pos::Bottom ) y = Height() - m_Text->Height() - m_rTextPadding.bottom - m_Padding.bottom;
    
	m_Text->SetPos( x, y );
	
}

void Label::SetText( const TextObject& str, bool bDoEvents )
{ 
	if ( m_Text->GetText() == str.GetUnicode() ) return;
    
	m_Text->SetString( str );
    if (m_Text->GetText().empty()) {
        m_Text->SetTextColorOverride(Gwen::Color(128, 128, 128, 255));
        m_Text->SetString(m_placeholderString);
    } else {
        m_Text->SetTextColorOverride(Gwen::Color(0, 0, 0, 0));
    }
	Redraw();

	if ( bDoEvents )
		OnTextChanged();
}

void Label::SetPlaceholderString( const TextObject& str)
{
    if (m_Text->GetText() == m_placeholderString.GetUnicode()) {
        m_placeholderString = str;
        m_Text->SetString(m_placeholderString);
        Redraw();
    } else {
        m_placeholderString = str;
    }
}

void Label::SizeToContents()
{
	m_Text->SetPos( m_rTextPadding.left + m_Padding.left, m_rTextPadding.top + m_Padding.top );
	m_Text->RefreshSize();
    
	SetSize( m_Text->Width() + m_Padding.left + m_Padding.right + m_rTextPadding.left + m_rTextPadding.right, m_Text->Height() + m_Padding.top + m_Padding.bottom + m_rTextPadding.top + m_rTextPadding.bottom );
	
}

Gwen::Point Label::GetCharacterPosition( int iChar )
{ 
	Gwen::Point p = m_Text->GetCharacterPosition( iChar );
	p.x += m_Text->X();
	p.y += m_Text->Y();
    
	return p;
}

void Label::OnKeyboardFocus() {
    Base::OnKeyboardFocus();
    if (m_Text->GetText() == m_placeholderString.GetUnicode()) {
        m_Text->SetString(L"");
        Redraw();
    }
        
}

void Label::OnLostKeyboardFocus() {
    Base::OnLostKeyboardFocus();
    if (m_Text->GetText() == L"") {
        m_Text->SetString(m_placeholderString.GetUnicode());
        Redraw();
    }
}
