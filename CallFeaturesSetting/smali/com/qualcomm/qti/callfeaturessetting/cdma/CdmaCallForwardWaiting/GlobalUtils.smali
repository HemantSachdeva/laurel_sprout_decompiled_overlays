.class public Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;
.super Ljava/lang/Object;
.source "GlobalUtils.java"


# static fields
.field public static final REQUIRED_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.CALL_PHONE"

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 38
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public static getActivateNumber(Landroid/content/Context;II)Ljava/lang/String;
    .locals 0

    .line 115
    invoke-static {p0, p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getResPerSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 117
    invoke-static {p2, p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getResId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeactivateNumber(Landroid/content/Context;II)Ljava/lang/String;
    .locals 0

    .line 123
    invoke-static {p0, p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getResPerSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 125
    invoke-static {p2, p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->getResId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "telephony_subscription_service"

    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 56
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, "telecom"

    .line 66
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 67
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object p0

    if-eqz p1, :cond_2

    .line 69
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 70
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlobalUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getResId(II)I
    .locals 4

    const/4 v0, 0x7

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const p0, 0x7f080009

    return p0

    :cond_0
    const p0, 0x7f08000b

    return p0

    :cond_1
    const p0, 0x7f080005

    return p0

    :cond_2
    const p0, 0x7f080007

    return p0

    :cond_3
    const p0, 0x7f080002

    return p0

    :cond_4
    if-eq p0, v3, :cond_9

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_7

    const/4 p1, 0x4

    if-eq p0, p1, :cond_6

    if-eq p0, v0, :cond_5

    const p0, 0x7f08000a

    return p0

    :cond_5
    const p0, 0x7f08000c

    return p0

    :cond_6
    const/high16 p0, 0x7f080000

    return p0

    :cond_7
    const p0, 0x7f080006

    return p0

    :cond_8
    const p0, 0x7f080008

    return p0

    :cond_9
    const p0, 0x7f080003

    return p0
.end method

.method private static getResPerSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .locals 2

    :try_start_0
    const-string v0, "telephony_subscription_service"

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 135
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 142
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->mcc:I

    .line 145
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result p1

    iput p1, v1, Landroid/content/res/Configuration;->mnc:I

    if-nez p1, :cond_0

    const p1, 0xffff

    .line 147
    iput p1, v1, Landroid/content/res/Configuration;->mnc:I

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 151
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 152
    invoke-virtual {v0, p1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 153
    new-instance p1, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-direct {p1, p0, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object p1

    :catch_0
    move-exception p0

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlobalUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static requestPhonePermission(Landroid/content/Context;)V
    .locals 2

    const-string v0, "GlobalUtils"

    const-string v1, "Phone permission has NOT been granted. Requesting permission."

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 181
    invoke-virtual {v0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.CALL_PHONE"

    .line 183
    invoke-virtual {v0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    sget-object p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 191
    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 187
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->showMissingPermissionDialog(Landroid/content/Context;)Landroid/app/AlertDialog;

    :goto_1
    return-void
.end method

.method public static showMissingPermissionDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 3

    .line 157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080013

    .line 158
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080020

    .line 159
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 160
    new-instance v1, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils$1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080022

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    new-instance v1, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils$2;-><init>(Landroid/content/Context;)V

    const p0, 0x7f080024

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
