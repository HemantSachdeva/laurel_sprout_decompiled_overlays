.class public Lcom/android/keyguard/CarrierTextController;
.super Ljava/lang/Object;
.source "CarrierTextController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;,
        Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;,
        Lcom/android/keyguard/CarrierTextController$Builder;,
        Lcom/android/keyguard/CarrierTextController$StatusMode;
    }
.end annotation


# instance fields
.field private mActiveMobileDataSubscription:I

.field private final mBgHandler:Landroid/os/Handler;

.field protected final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

.field private mContext:Landroid/content/Context;

.field private mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

.field private final mIsEmergencyCallCapable:Z

.field protected mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSeparator:Ljava/lang/CharSequence;

.field private mShowAirplaneMode:Z

.field private mShowMissingSim:Z

.field private mSimErrorState:[Z

.field private final mSimSlotsNumber:I

.field private mTelephonyCapable:Z

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    new-instance v0, Lcom/android/keyguard/CarrierTextController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$1;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 96
    new-instance v0, Lcom/android/keyguard/CarrierTextController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$2;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 136
    new-instance v0, Lcom/android/keyguard/CarrierTextController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$3;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 170
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    .line 171
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mIsEmergencyCallCapable:Z

    .line 173
    iput-boolean p3, p0, Lcom/android/keyguard/CarrierTextController;->mShowAirplaneMode:Z

    .line 174
    iput-boolean p4, p0, Lcom/android/keyguard/CarrierTextController;->mShowMissingSim:Z

    const-string p3, "wifi"

    .line 176
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 177
    iput-object p2, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    .line 178
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 179
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    .line 180
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    .line 181
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    .line 182
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mBgHandler:Landroid/os/Handler;

    .line 183
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 184
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mBgHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/keyguard/-$$Lambda$CarrierTextController$LDahO04Jhi3ephJWS_by3x0LKJY;

    invoke-direct {p2, p0}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$LDahO04Jhi3ephJWS_by3x0LKJY;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CarrierTextController;)Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/CarrierTextController;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/CarrierTextController;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/CarrierTextController;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/CarrierTextController;I)Lcom/android/keyguard/CarrierTextController$StatusMode;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->getStatusForIccState(I)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/CarrierTextController;)[Z
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/keyguard/CarrierTextController;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/keyguard/CarrierTextController;->mActiveMobileDataSubscription:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/CarrierTextController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 561
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 562
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private get5GNetworkClass(Landroid/telephony/SubscriptionInfo;I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    .line 789
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->data_connection_5g:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 792
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p2

    .line 793
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 795
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    if-nez v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 797
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 800
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p2

    .line 801
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isNrIconTypeValid()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->isDataRegisteredOnLte(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 802
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->data_connection_5g:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAirplaneModeMessage()Ljava/lang/String;
    .locals 1

    .line 427
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mShowAirplaneMode:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->airplane_mode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 439
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->getStatusForIccState(I)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object p1

    .line 440
    sget-object v0, Lcom/android/keyguard/CarrierTextController$4;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object p2, v0

    goto :goto_0

    .line 483
    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_error_message_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 482
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 478
    :pswitch_2
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_puk_locked_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 472
    :pswitch_3
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_locked_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 471
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 461
    :pswitch_4
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_permanent_disabled_sim_message_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 460
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 451
    :pswitch_5
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->keyguard_network_locked_message:I

    .line 452
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :pswitch_6
    const-string p2, ""

    :goto_0
    :pswitch_7
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getCustomizeCarrierName(Ljava/lang/CharSequence;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 5

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/CarrierTextController;->getNetworkType(I)I

    move-result v1

    .line 710
    invoke-direct {p0, v1}, Lcom/android/keyguard/CarrierTextController;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 712
    invoke-direct {p0, p2, v1}, Lcom/android/keyguard/CarrierTextController;->get5GNetworkClass(Landroid/telephony/SubscriptionInfo;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object v2, p2

    .line 717
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 718
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 719
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_5

    .line 720
    aget-object v1, p1, p2

    sget v3, Lcom/android/systemui/R$array;->origin_carrier_names:I

    sget v4, Lcom/android/systemui/R$array;->locale_carrier_names:I

    invoke-direct {p0, v1, v3, v4}, Lcom/android/keyguard/CarrierTextController;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p2

    .line 723
    aget-object v1, p1, p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 724
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p2

    :cond_1
    if-lez p2, :cond_2

    .line 728
    aget-object v1, p1, p2

    add-int/lit8 v3, p2, -0x1

    aget-object v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 732
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 734
    :cond_3
    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 738
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLocalString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 777
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 778
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    .line 779
    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_1

    .line 780
    aget-object v0, p2, p3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    aget-object p0, p0, p3

    return-object p0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private getMissingSimMessage()Ljava/lang/String;
    .locals 1

    .line 422
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mShowMissingSim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getNetworkType(I)I
    .locals 0

    .line 743
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ServiceState;

    if-eqz p0, :cond_1

    .line 744
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-eqz p1, :cond_0

    .line 745
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p1

    if-nez p1, :cond_1

    .line 746
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p1

    if-nez p1, :cond_2

    .line 748
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return p1
.end method

.method private getStatusForIccState(I)Lcom/android/keyguard/CarrierTextController$StatusMode;
    .locals 1

    .line 529
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 530
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-eq p1, v0, :cond_1

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 p1, 0x4

    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 556
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 554
    :pswitch_0
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 550
    :pswitch_1
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 542
    :pswitch_2
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 548
    :pswitch_3
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 540
    :pswitch_4
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 546
    :pswitch_5
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 544
    :pswitch_6
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 538
    :pswitch_7
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 552
    :pswitch_8
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 196
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private handleSetListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 2

    .line 253
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 255
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    .line 256
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$Q9wwkxQ080xCMh0FoQlLdgAfhSI;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$Q9wwkxQ080xCMh0FoQlLdgAfhSI;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 260
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 p1, 0x400000

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/-$$Lambda$CarrierTextController$oi57qYsuU97hQX_k3GdwhheueLc;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$oi57qYsuU97hQX_k3GdwhheueLc;-><init>(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 269
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    .line 270
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$DU9JkyLlu7BQSyhrdUqIiohEMiE;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$DU9JkyLlu7BQSyhrdUqIiohEMiE;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 272
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_0
    return-void
.end method

.method private isDataRegisteredOnLte(I)Z
    .locals 1

    .line 809
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 810
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 811
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result p0

    const/16 p1, 0xd

    if-eq p0, p1, :cond_1

    const/16 p1, 0x13

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 579
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 581
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 583
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 584
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 585
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 587
    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleSetListening$1()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic lambda$handleSetListening$2(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 4

    .line 264
    new-instance v0, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;-><init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[I)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method

.method private synthetic lambda$handleSetListening$3()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    invoke-direct {p0, v0}, Lcom/android/keyguard/CarrierTextController;->handleSetListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$postToCallback$5(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 0

    .line 413
    invoke-interface {p0, p1}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method

.method private synthetic lambda$setListening$4(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 0

    .line 283
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->handleSetListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    return-void
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 499
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    .line 500
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {p1, p2, p0}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 512
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 514
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->keyguard_carrier_name_with_sim_locked_template:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    if-eqz v2, :cond_2

    return-object p2

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private networkTypeToString(I)Ljava/lang/String;
    .locals 7

    .line 755
    sget v0, Lcom/android/systemui/R$string;->config_rat_unknown:I

    .line 756
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v1

    const-wide/32 v3, 0x804b

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_0

    .line 758
    sget v0, Lcom/android/systemui/R$string;->config_rat_2g:I

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x16bb4

    and-long/2addr v3, v1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    .line 760
    sget v0, Lcom/android/systemui/R$string;->config_rat_3g:I

    goto :goto_0

    :cond_1
    const-wide/32 v3, 0x61000

    and-long/2addr v1, v3

    cmp-long p1, v1, v5

    if-eqz p1, :cond_2

    .line 762
    sget v0, Lcom/android/systemui/R$string;->config_rat_4g:I

    .line 764
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IZ)Ljava/lang/CharSequence;
    .locals 5

    const/16 v0, 0x8

    const-string v1, ""

    .line 211
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/CarrierTextController;->getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 214
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 215
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x10402d6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    .line 221
    invoke-static {v0, p1, p0}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 225
    :cond_1
    aget v2, p3, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 226
    aget v2, p3, v1

    .line 228
    aget-object v3, p2, v2

    iget-object v4, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_1

    .line 233
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method


# virtual methods
.method protected getSubscriptionInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFilteredSubscriptionInfo(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$handleSetListening$1$CarrierTextController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->lambda$handleSetListening$1()V

    return-void
.end method

.method public synthetic lambda$handleSetListening$3$CarrierTextController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->lambda$handleSetListening$3()V

    return-void
.end method

.method public synthetic lambda$new$0$CarrierTextController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$setListening$4$CarrierTextController(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->lambda$setListening$4(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    return-void
.end method

.method protected postToCallback(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    if-eqz v0, :cond_0

    .line 413
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$5nEYjT7ZyAro48Qi-bsR2yyNFwM;

    invoke-direct {v1, v0, p1}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$5nEYjT7ZyAro48Qi-bsR2yyNFwM;-><init>(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$C6go0e-jA3BYgQhMyia20ELR8OQ;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$C6go0e-jA3BYgQhMyia20ELR8OQ;-><init>(Lcom/android/keyguard/CarrierTextController;Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateCarrierText()V
    .locals 18

    move-object/from16 v0, p0

    .line 294
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$bool;->config_show_customize_carrier_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getSubscriptionInfo()Ljava/util/List;

    move-result-object v2

    .line 299
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 300
    new-array v8, v3, [I

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCarrierText(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "CarrierTextController"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget v4, v0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    new-array v4, v4, [I

    const/4 v9, 0x0

    .line 305
    :goto_0
    iget v10, v0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    if-ge v9, v10, :cond_0

    const/4 v10, -0x1

    .line 306
    aput v10, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 308
    :cond_0
    new-array v9, v3, [Ljava/lang/CharSequence;

    .line 309
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_1
    const-string v13, ""

    if-ge v10, v3, :cond_5

    .line 312
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v14

    .line 313
    aput-object v13, v9, v10

    .line 314
    aput v14, v8, v10

    .line 315
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v13

    aput v10, v4, v13

    .line 316
    iget-object v13, v0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13, v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    move-result v13

    .line 317
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v15}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v1, :cond_1

    .line 319
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-direct {v0, v15, v5}, Lcom/android/keyguard/CarrierTextController;->getCustomizeCarrierName(Ljava/lang/CharSequence;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v15

    .line 321
    :cond_1
    invoke-direct {v0, v13, v15}, Lcom/android/keyguard/CarrierTextController;->getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 323
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v1

    const-string v1, "Handling (subId="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2

    .line 327
    aput-object v5, v9, v10

    const/4 v11, 0x0

    :cond_2
    const/4 v1, 0x5

    if-ne v13, v1, :cond_4

    .line 330
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ServiceState;

    if-eqz v1, :cond_4

    .line 331
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v5

    if-nez v5, :cond_4

    .line 334
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    const/16 v7, 0x12

    if-ne v5, v7, :cond_3

    iget-object v5, v0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 335
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 336
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 337
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 339
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM ready and in service: subId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", ss="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v17

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    if-eqz v11, :cond_6

    if-nez v12, :cond_6

    if-eqz v3, :cond_7

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 356
    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 364
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402d6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v2, "android.telephony.extra.SHOW_SPN"

    const/4 v3, 0x0

    .line 370
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "android.telephony.extra.SPN"

    .line 371
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    move-object v2, v13

    :goto_2
    const-string v5, "android.telephony.extra.SHOW_PLMN"

    .line 373
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "android.telephony.extra.PLMN"

    .line 374
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 376
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting plmn/spn sticky brdcst "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {v13, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v2, v13

    goto :goto_3

    .line 380
    :cond_a
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v13, v2, v1}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    .line 383
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 387
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v1, v9}, Lcom/android/keyguard/CarrierTextController;->joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 389
    :cond_c
    invoke-direct {v0, v1, v9, v4, v11}, Lcom/android/keyguard/CarrierTextController;->updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IZ)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v12, :cond_d

    .line 395
    iget-object v2, v0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getAirplaneModeMessage()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    move-object v5, v1

    .line 400
    :goto_5
    new-instance v1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    const/4 v2, 0x1

    xor-int/lit8 v7, v11, 0x1

    move-object v4, v1

    move-object v6, v9

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;-><init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[IZ)V

    .line 406
    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierTextController;->postToCallback(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method
