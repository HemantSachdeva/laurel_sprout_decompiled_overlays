.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPinBasedInputView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mButton0:Landroid/view/View;

.field private mButton1:Landroid/view/View;

.field private mButton2:Landroid/view/View;

.field private mButton3:Landroid/view/View;

.field private mButton4:Landroid/view/View;

.field private mButton5:Landroid/view/View;

.field private mButton6:Landroid/view/View;

.field private mButton7:Landroid/view/View;

.field private mButton8:Landroid/view/View;

.field private mButton9:Landroid/view/View;

.field private mDeleteButton:Landroid/view/View;

.field private mOkButton:Landroid/view/View;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private performClick(Landroid/view/View;)V
    .locals 0

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method private performNumberClick(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 171
    :pswitch_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 159
    :pswitch_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 156
    :pswitch_5
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 153
    :pswitch_6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 150
    :pswitch_7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 147
    :pswitch_8
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 144
    :pswitch_9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 0

    if-eqz p1, :cond_6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    .line 133
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pin:I

    return p0

    .line 129
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pin:I

    return p0

    .line 127
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_user_request:I

    return p0

    .line 125
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_device_admin:I

    return p0

    .line 118
    :cond_3
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 119
    sget p0, Lcom/android/systemui/R$string;->input_pin_after_72_hours_timeout_msg:I

    return p0

    .line 121
    :cond_4
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pin:I

    return p0

    .line 115
    :cond_5
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_restart_pin:I

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 278
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x10403ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 188
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 189
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V

    .line 201
    sget v0, Lcom/android/systemui/R$id;->key_enter:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 215
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->delete_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    const/4 v1, 0x0

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 239
    sget v0, Lcom/android/systemui/R$id;->key0:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    .line 240
    sget v0, Lcom/android/systemui/R$id;->key1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    .line 241
    sget v0, Lcom/android/systemui/R$id;->key2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    .line 242
    sget v0, Lcom/android/systemui/R$id;->key3:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    .line 243
    sget v0, Lcom/android/systemui/R$id;->key4:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    .line 244
    sget v0, Lcom/android/systemui/R$id;->key5:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    .line 245
    sget v0, Lcom/android/systemui/R$id;->key6:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    .line 246
    sget v0, Lcom/android/systemui/R$id;->key7:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    .line 247
    sget v0, Lcom/android/systemui/R$id;->key8:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    .line 248
    sget v0, Lcom/android/systemui/R$id;->key9:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 251
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 270
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 271
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 91
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 92
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    return v1

    :cond_0
    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 95
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    return v1

    :cond_1
    const/4 v0, 0x7

    if-lt p1, v0, :cond_2

    const/16 v2, 0x10

    if-gt p1, v2, :cond_2

    sub-int/2addr p1, v0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    return v1

    :cond_2
    const/16 v0, 0x90

    if-lt p1, v0, :cond_3

    const/16 v2, 0x99

    if-gt p1, v2, :cond_3

    sub-int/2addr p1, v0

    .line 105
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    return v1

    .line 108
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onResume(I)V
    .locals 0

    .line 256
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 257
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 262
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected resetPasswordText(ZZ)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->reset(ZZ)V

    return-void
.end method

.method protected resetState()V
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryEnabled(Z)V

    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 76
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
