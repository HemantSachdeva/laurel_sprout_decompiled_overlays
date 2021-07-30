.class public Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPhoneNumberPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$GetDefaultNumberListener;,
        Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$OnDialogClosedListener;
    }
.end annotation


# instance fields
.field private mButtonClicked:I

.field private mChangeNumberText:Ljava/lang/CharSequence;

.field private mChecked:Z

.field private mConfirmationMode:I

.field private mContactListIntent:Landroid/content/Intent;

.field private mContactPickButton:Landroid/widget/ImageButton;

.field private mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mDialogOnClosedListener:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$OnDialogClosedListener;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEnableText:Ljava/lang/CharSequence;

.field private mEncodedText:Ljava/lang/String;

.field private mGetDefaultNumberListener:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$GetDefaultNumberListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    const/high16 v0, 0x7f060000

    .line 130
    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setDialogLayoutResource(I)V

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    sget-object v0, Lcom/qualcomm/qti/callfeaturessetting/R$styleable;->EditPhoneNumberPreference:[I

    const/4 v1, 0x0

    const v2, 0x7f090002

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 139
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    const/4 p2, 0x2

    .line 140
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 142
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mConfirmationMode:I

    .line 143
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;)Landroid/content/Intent;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mPrefId:I

    return p0
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getStringValue()Ljava/lang/String;
    .locals 2

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isToggled()Z
    .locals 0

    .line 343
    iget-boolean p0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mChecked:Z

    return p0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 1

    const p0, 0x7f050004

    .line 236
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 p1, -0x1

    const/4 v0, -0x2

    .line 240
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    const/4 v0, -0x2

    .line 187
    iput v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mButtonClicked:I

    .line 189
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 192
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f050008

    .line 194
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 200
    iget-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$GetDefaultNumberListener;

    if-eqz p1, :cond_0

    .line 201
    invoke-interface {p1, p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$GetDefaultNumberListener;->onGetDefaultNumber(Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    iput-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 206
    :cond_0
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p1

    iget-object v1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p1, v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 209
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 210
    iget-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    .line 215
    new-instance v0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$1;-><init>(Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .line 157
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020010

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 166
    iget v1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 177
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq p0, v0, :cond_2

    .line 178
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    .line 322
    iget v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    goto :goto_1

    .line 324
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;

    .line 325
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 332
    :goto_1
    iget-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$OnDialogClosedListener;

    if-eqz p1, :cond_2

    .line 333
    iget v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mButtonClicked:I

    invoke-interface {p1, p0, v0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$OnDialogClosedListener;->onDialogClosed(Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;I)V

    :cond_2
    return-void
.end method

.method public onPickActivityResult(Ljava/lang/String;)V
    .locals 0

    .line 298
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 300
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    .line 251
    iget v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 252
    iget-boolean v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 256
    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    :goto_0
    const/high16 p0, 0x7f070000

    .line 261
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 389
    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    .line 388
    :goto_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->setValueFromString(Ljava/lang/String;)V

    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 422
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setParentActivity(Landroid/app/Activity;I)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 281
    iput p2, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mPrefId:I

    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$GetDefaultNumberListener;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 375
    invoke-virtual {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->notifyChanged()V

    return-object p0
.end method

.method public setToggled(Z)Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;
    .locals 0

    .line 349
    iput-boolean p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mChecked:Z

    .line 350
    invoke-virtual {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->notifyChanged()V

    return-object p0
.end method

.method protected setValueFromString(Ljava/lang/String;)V
    .locals 2

    const-string v0, ":"

    const/4 v1, 0x2

    .line 430
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 431
    aget-object v0, p1, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->setToggled(Z)Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;

    const/4 v0, 0x1

    .line 432
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 3

    .line 405
    iget v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    const-string v2, ":"

    .line 406
    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 407
    aget-object p0, p0, v1

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->mConfirmationMode:I

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    move p0, v1

    :goto_0
    return p0
.end method
