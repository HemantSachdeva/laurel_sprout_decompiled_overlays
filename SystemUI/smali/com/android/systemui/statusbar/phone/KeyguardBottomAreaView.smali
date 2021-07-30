.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;
    }
.end annotation


# static fields
.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final PHONE_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field private mBurnInXOffset:I

.field private mBurnInYOffset:I

.field private mCameraPreview:Landroid/view/View;

.field private mDarkAmount:F

.field private final mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mDozing:Z

.field private mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

.field private mEnterpriseDisclosure:Landroid/widget/TextView;

.field private mIndicationArea:Landroid/view/ViewGroup;

.field private mIndicationBottomMargin:I

.field private mIndicationText:Landroid/widget/TextView;

.field private mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mLeftAssistIcon:Landroid/graphics/drawable/Drawable;

.field private mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

.field private mLeftButtonStr:Ljava/lang/String;

.field private mLeftExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<",
            "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftIsVoiceAssist:Z

.field private mLeftPreview:Landroid/view/View;

.field private mOverlayContainer:Landroid/view/ViewGroup;

.field private mPreviewContainer:Landroid/view/ViewGroup;

.field private mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

.field private mPrewarmBound:Z

.field private final mPrewarmConnection:Landroid/content/ServiceConnection;

.field private mPrewarmMessenger:Landroid/os/Messenger;

.field private mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

.field private mRightButtonStr:Ljava/lang/String;

.field private mRightExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<",
            "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowCameraAffordance:Z

.field private final mShowLeftAffordance:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserSetupComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 192
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    .line 165
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    .line 168
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    .line 198
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 697
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 709
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->config_keyguardShowLeftAffordance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mShowLeftAffordance:Z

    .line 194
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->config_keyguardShowCameraAffordance:I

    .line 195
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mShowCameraAffordance:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserSetupComplete:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mShowLeftAffordance:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAssistIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isPhoneVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800()Landroid/content/Intent;
    .locals 1

    .line 95
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mShowCameraAffordance:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$2400()Landroid/content/Intent;
    .locals 1

    .line 95
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    return p1
.end method

.method static synthetic access$600(I)Z
    .locals 0

    .line 95
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isSuccessfulLaunch(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->inflateCameraPreview()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->canLaunchVoiceAssist()Z

    move-result p0

    return p0
.end method

.method private canLaunchVoiceAssist()Z
    .locals 0

    .line 577
    const-class p0, Lcom/android/systemui/assist/AssistManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->canVoiceAssistBeLaunchedFromKeyguard()Z

    move-result p0

    return p0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {p0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private inflateCameraPreview()V
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 639
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 640
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 642
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 644
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 645
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz p0, :cond_3

    .line 648
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updatePreviews()V

    :cond_3
    return-void
.end method

.method private initAccessibility()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private isPhoneVisible()Z
    .locals 2

    .line 418
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony"

    .line 419
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isSuccessfulLaunch(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$onAttachedToWindow$0(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 0

    .line 274
    invoke-interface {p0}, Lcom/android/systemui/plugins/IntentButtonProvider;->getIntentButton()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onAttachedToWindow$1()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 2

    .line 276
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;)V

    return-object v0
.end method

.method private synthetic lambda$onAttachedToWindow$2(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    .line 277
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setRightButton(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V

    return-void
.end method

.method static synthetic lambda$onAttachedToWindow$3(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 0

    .line 281
    invoke-interface {p0}, Lcom/android/systemui/plugins/IntentButtonProvider;->getIntentButton()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onAttachedToWindow$4()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 2

    .line 283
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;)V

    return-object v0
.end method

.method private synthetic lambda$onAttachedToWindow$5(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    .line 284
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setLeftButton(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V

    return-void
.end method

.method private launchPhone()V
    .locals 3

    .line 581
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/telecom/TelecomManager;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButtonStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 591
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "sysui_keyguard_left_unlock"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 592
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {p0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    :goto_1
    return-void
.end method

.method private setLeftButton(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    .line 738
    instance-of p1, p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 739
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    .line 741
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    return-void
.end method

.method private setRightButton(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    .line 731
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateRightAffordanceIcon()V

    .line 732
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 733
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->inflateCameraPreview()V

    return-void
.end method

.method private startFinishDozeAnimationElement(Landroid/view/View;J)V
    .locals 1

    const/4 p0, 0x0

    .line 687
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 688
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 689
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 690
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 691
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 692
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 693
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xfa

    .line 694
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateCameraVisibility()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mShowCameraAffordance:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {p0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 387
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateLeftAffordanceIcon()V
    .locals 4

    .line 400
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mShowLeftAffordance:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    move-result-object v0

    .line 405
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-boolean v3, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 407
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->shouldTint()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 408
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v2, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 410
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 401
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateLeftPreview()V
    .locals 3

    .line 653
    const-class v0, Lcom/android/systemui/assist/AssistManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftPreview:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 655
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 658
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    if-eqz v1, :cond_1

    .line 659
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v1}, Lcom/android/systemui/assist/AssistManager;->getVoiceInteractorComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 660
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    .line 661
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->getVoiceInteractorComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 660
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreviewFromService(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftPreview:Landroid/view/View;

    goto :goto_0

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v1}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftPreview:Landroid/view/View;

    .line 666
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftPreview:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 667
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftPreview:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz p0, :cond_4

    .line 671
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updatePreviews()V

    :cond_4
    return-void
.end method

.method private updateRightAffordanceIcon()V
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 348
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->shouldTint()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v2, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 351
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bindCameraPrewarmService()V
    .locals 9

    .line 441
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 443
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x1

    .line 442
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/ActivityIntentHelper;->getTargetActivityInfo(Landroid/content/Intent;IZ)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v2, "android.media.still_image_camera_preview_service"

    .line 445
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 449
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    .line 450
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    const v6, 0x4000001

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to bind to prewarm service package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " class="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar/KeyguardBottomAreaView"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public dozeTimeTick()V
    .locals 2

    .line 763
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBurnInYOffset:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBurnInYOffset:I

    sub-int/2addr v0, v1

    .line 765
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkAmount:F

    mul-float/2addr v0, p0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public getIndicationArea()Landroid/view/View;
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftPreview:Landroid/view/View;

    return-object p0
.end method

.method public getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 0

    .line 618
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    return-object p0
.end method

.method public getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initFrom(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    .line 231
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public isLeftVoiceAssist()Z
    .locals 0

    .line 414
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    return p0
.end method

.method public synthetic lambda$onAttachedToWindow$1$KeyguardBottomAreaView()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$onAttachedToWindow$1()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onAttachedToWindow$2$KeyguardBottomAreaView(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$onAttachedToWindow$2(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V

    return-void
.end method

.method public synthetic lambda$onAttachedToWindow$4$KeyguardBottomAreaView()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$onAttachedToWindow$4()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onAttachedToWindow$5$KeyguardBottomAreaView(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$onAttachedToWindow$5(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V

    return-void
.end method

.method public launchCamera(Ljava/lang/String;)V
    .locals 3

    .line 481
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.systemui.camera_launch_source"

    .line 482
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 484
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 483
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result p1

    .line 485
    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 486
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/content/Intent;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    :goto_0
    return-void
.end method

.method public launchLeftAffordance()V
    .locals 1

    .line 551
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchVoiceAssist()V

    goto :goto_0

    .line 554
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchPhone()V

    :goto_0
    return-void
.end method

.method launchVoiceAssist()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 560
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    const-class p0, Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButtonStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 570
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v3, "sysui_keyguard_right_unlock"

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    .line 571
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    :goto_1
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 846
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 848
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isPaddingRelative()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 851
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_1
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 270
    const-class v0, Lcom/android/systemui/plugins/IntentButtonProvider;

    const-class v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    const-class v2, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 271
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V

    .line 272
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$g4KaNPI9kzVsHrOlMY-mA_f9J2Y;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$g4KaNPI9kzVsHrOlMY-mA_f9J2Y;

    const-string v5, "com.android.systemui.action.PLUGIN_LOCKSCREEN_RIGHT_BUTTON"

    .line 273
    invoke-interface {v3, v0, v5, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    new-instance v4, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v6, "sysui_keyguard_right"

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withTunerFactory(Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$41MKD52m3LHIf9RRtKFf6LfUif0;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$41MKD52m3LHIf9RRtKFf6LfUif0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 276
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$Z_R5g5wpXUcfPYLHCfZHekG4xK0;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$Z_R5g5wpXUcfPYLHCfZHekG4xK0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 277
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withCallback(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    .line 278
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    .line 279
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$Eh9_ou4HbbT4H4ZFilpDDtanY4k;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$Eh9_ou4HbbT4H4ZFilpDDtanY4k;

    const-string v3, "com.android.systemui.action.PLUGIN_LOCKSCREEN_LEFT_BUTTON"

    .line 280
    invoke-interface {v1, v0, v3, v2}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    new-instance v0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v3, "sysui_keyguard_left"

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withTunerFactory(Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$W-hTEBW5YZVW2MsKtz0LzBCynHY;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$W-hTEBW5YZVW2MsKtz0LzBCynHY;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 283
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$owXxFBBnubMOAUdfyf5a48bf-Zo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$owXxFBBnubMOAUdfyf5a48bf-Zo;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 284
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withCallback(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    .line 285
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    .line 286
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 287
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 290
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_0

    const-string p1, "lockscreen_affordance"

    .line 434
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 312
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 313
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_indication_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationBottomMargin:I

    .line 315
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->default_burn_in_prevention_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBurnInYOffset:I

    .line 317
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 318
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationBottomMargin:I

    if-eq v0, v1, :cond_0

    .line 319
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEnterpriseDisclosure:Landroid/widget/TextView;

    .line 325
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    .line 324
    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 327
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    .line 328
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 327
    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 331
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 332
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 333
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateRightAffordanceIcon()V

    .line 337
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 338
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 339
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 296
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->destroy()V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->destroy()V

    .line 301
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 236
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 237
    new-instance v0, Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/systemui/ActivityIntentHelper;

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/ActivityIntentHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/ActivityIntentHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    .line 239
    sget v0, Lcom/android/systemui/R$id;->preview_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 240
    sget v0, Lcom/android/systemui/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    .line 241
    sget v0, Lcom/android/systemui/R$id;->overlay_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mOverlayContainer:Landroid/view/ViewGroup;

    .line 242
    sget v0, Lcom/android/systemui/R$id;->camera_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 243
    sget v0, Lcom/android/systemui/R$id;->left_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 244
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    .line 245
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_enterprise_disclosure:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEnterpriseDisclosure:Landroid/widget/TextView;

    .line 247
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    .line 248
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_indication_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationBottomMargin:I

    .line 250
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->default_burn_in_prevention_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBurnInYOffset:I

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 253
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 254
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 256
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->inflateCameraPreview()V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initAccessibility()V

    .line 261
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 262
    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 263
    const-class v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 264
    new-instance v0, Lcom/android/systemui/ActivityIntentHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/ActivityIntentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    return-void
.end method

.method public onStateChanged(ZZ)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 427
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 428
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-void
.end method

.method public onUnlockedChanged()V
    .locals 0

    .line 632
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 599
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    :cond_0
    return-void
.end method

.method public resolveCameraIntent()Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 377
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object p0

    .line 379
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/high16 v2, 0x10000

    .line 377
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public setAffordanceAlpha(F)V
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 783
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public setAffordanceHelper(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    return-void
.end method

.method public setAntiBurnInOffsetX(I)V
    .locals 1

    .line 769
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBurnInXOffset:I

    if-ne v0, p1, :cond_0

    return-void

    .line 772
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBurnInXOffset:I

    .line 773
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1

    .line 537
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 540
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkAmount:F

    .line 541
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->dozeTimeTick()V

    return-void
.end method

.method public setDozing(ZZ)V
    .locals 1

    .line 745
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    .line 747
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 748
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    if-eqz p1, :cond_0

    .line 751
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mOverlayContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 752
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 754
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mOverlayContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 755
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 757
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 0

    .line 364
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserSetupComplete:Z

    .line 365
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    return-void
.end method

.method public startFinishDozeAnimation()V
    .locals 3

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    const-wide/16 v1, 0x30

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    :cond_1
    return-void
.end method

.method public unbindCameraPrewarmService(Z)V
    .locals 2

    .line 466
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmBound:Z

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 469
    :try_start_0
    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "StatusBar/KeyguardBottomAreaView"

    const-string v1, "Error sending camera fired message"

    .line 472
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    :cond_0
    :goto_0
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 476
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmBound:Z

    :cond_1
    return-void
.end method

.method public updateLeftAffordance()V
    .locals 0

    .line 725
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    .line 726
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftPreview()V

    return-void
.end method
