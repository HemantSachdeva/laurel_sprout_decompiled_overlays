.class public Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallForwardOptions.java"


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mButtonCFB:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

.field private mButtonCFNRc:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

.field private mButtonCFNRy:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

.field private mButtonCFU:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

.field private mCfDeactAllPref:Landroid/preference/PreferenceScreen;

.field private mCfbDeactPref:Landroid/preference/PreferenceScreen;

.field private mCfnrcDeactPref:Landroid/preference/PreferenceScreen;

.field private mCfnryDeactPref:Landroid/preference/PreferenceScreen;

.field private mCfuDeactPref:Landroid/preference/PreferenceScreen;

.field private final mDeactPreScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstResume:Z

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "data1"

    .line 52
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mDeactPreScreens:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mSubId:I

    return-void
.end method

.method private init()V
    .locals 4

    .line 148
    iget v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mSubId:I

    invoke-static {p0, v0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 151
    iget v2, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mSubId:I

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->updateChildPreference(II)V

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call option on type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Getting deact num ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mSubId:I

    .line 153
    invoke-static {p0, v3, v1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getDeactivateNumber(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CdmaCallForwardOptions"

    .line 152
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    iput-boolean v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mFirstResume:Z

    return-void
.end method

.method private updateChildPreference(II)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    iget v1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mSubId:I

    .line 161
    invoke-static {p0, v1, p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getActivateNumber(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v0, p0, p2, v1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;->init(Landroid/app/Activity;ILjava/lang/String;)V

    .line 164
    :cond_0
    iget-object p2, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mDeactPreScreens:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 165
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/preference/PreferenceScreen;

    iget v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mSubId:I

    .line 166
    invoke-static {p0, v0, p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getDeactivateNumber(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p2, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mDeactPreScreens:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/preference/PreferenceScreen;

    invoke-virtual {p2}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object p2

    iget v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mSubId:I

    .line 168
    invoke-static {p0, v0, p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getDeactivateNumber(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "tel"

    .line 167
    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 169
    iget-object p2, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz p2, :cond_1

    .line 170
    iget-object p2, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mDeactPreScreens:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const-string p2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 171
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const-string v0, "CdmaCallForwardOptions"

    const-string v1, "onActivityResult: done"

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const-string p0, "onActivityResult: contact picker result not OK."

    .line 180
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 185
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 201
    :cond_2
    iget-object p0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object p0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_4
    iget-object p0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFB:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_5
    iget-object p0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFU:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_6

    .line 208
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void

    :cond_7
    :goto_1
    const-string p0, "onActivityResult: bad contact data, no results found."

    .line 186
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f0b0000

    .line 93
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mSubId:I

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inside CF options, Getting subscription = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CdmaCallForwardOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "button_cfu_key"

    .line 102
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFU:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    const-string v0, "button_cfb_key"

    .line 103
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFB:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    const-string v0, "button_cfnry_key"

    .line 104
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    const-string v0, "button_cfnrc_key"

    .line 105
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    .line 107
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFU:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    iget v1, v0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;->reason:I

    invoke-virtual {v0, p0, v1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 108
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFB:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    iget v1, v0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;->reason:I

    invoke-virtual {v0, p0, v1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 109
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    iget v1, v0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;->reason:I

    invoke-virtual {v0, p0, v1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 110
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    iget v1, v0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;->reason:I

    invoke-virtual {v0, p0, v1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 112
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFU:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFB:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardEditPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "button_cfu_deact_key"

    .line 117
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mCfuDeactPref:Landroid/preference/PreferenceScreen;

    const-string v0, "button_cfb_deact_key"

    .line 118
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mCfbDeactPref:Landroid/preference/PreferenceScreen;

    const-string v0, "button_cfnry_deact_key"

    .line 119
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mCfnryDeactPref:Landroid/preference/PreferenceScreen;

    const-string v0, "button_cfnrc_deact_key"

    .line 120
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mCfnrcDeactPref:Landroid/preference/PreferenceScreen;

    const-string v0, "button_cf_deact_all_key"

    .line 121
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mCfDeactAllPref:Landroid/preference/PreferenceScreen;

    .line 123
    iget-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mDeactPreScreens:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mCfuDeactPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mDeactPreScreens:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mCfbDeactPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mDeactPreScreens:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mCfnryDeactPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mDeactPreScreens:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mCfnrcDeactPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mDeactPreScreens:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mCfDeactAllPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mFirstResume:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 229
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

    .line 232
    invoke-direct {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->init()V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 135
    iget-boolean v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->mFirstResume:Z

    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 136
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.CALL_PHONE"

    .line 138
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/CdmaCallForwardOptions;->init()V

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->requestPhonePermission(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
