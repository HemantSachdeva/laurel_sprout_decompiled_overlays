.class public Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallWaitingOptions.java"


# instance fields
.field private mFirstResume:Z

.field private mSubId:I

.field prefCWAct:Landroid/preference/PreferenceScreen;

.field prefCWDeact:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->mSubId:I

    return-void
.end method

.method private init()V
    .locals 7

    .line 78
    iget v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->mSubId:I

    invoke-static {p0, v0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->prefCWAct:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 80
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    iget v3, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->mSubId:I

    const/4 v4, 0x7

    .line 82
    invoke-static {p0, v3, v4}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getActivateNumber(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "tel"

    const/4 v6, 0x0

    .line 81
    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->prefCWAct:Landroid/preference/PreferenceScreen;

    iget v3, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->mSubId:I

    invoke-static {p0, v3, v4}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getActivateNumber(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->prefCWDeact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->mSubId:I

    .line 89
    invoke-static {p0, v1, v4}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getDeactivateNumber(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v5, v1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->prefCWDeact:Landroid/preference/PreferenceScreen;

    iget v1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->mSubId:I

    invoke-static {p0, v1, v4}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getDeactivateNumber(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->mFirstResume:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0001

    .line 48
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 51
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->mSubId:I

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inside CW options, Getting subscription = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CdmaCallWaitingOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "button_cw_act_key"

    .line 56
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->prefCWAct:Landroid/preference/PreferenceScreen;

    const-string v0, "button_cw_deact_key"

    .line 57
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->prefCWDeact:Landroid/preference/PreferenceScreen;

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->mFirstResume:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 122
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 103
    :cond_0
    array-length p1, p3

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->init()V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 65
    iget-boolean v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->mFirstResume:Z

    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 66
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.CALL_PHONE"

    .line 68
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallWaitingOptions;->init()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->requestPhonePermission(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
