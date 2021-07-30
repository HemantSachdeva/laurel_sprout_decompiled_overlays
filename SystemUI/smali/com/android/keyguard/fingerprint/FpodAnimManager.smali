.class public Lcom/android/keyguard/fingerprint/FpodAnimManager;
.super Ljava/lang/Object;
.source "FpodAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fingerprint/FpodAnimManager$AlphaDismissDraw;,
        Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;
    }
.end annotation


# static fields
.field private static final SUPPORT_STAR_ANIMATION:Z

.field private static final ZERO_RES_ARRAY:[I


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDozing:Z

.field private mEnrolling:Z

.field private mFpodAnimType:I

.field private mFpodFrameAnimation:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

.field private mKeyguardAuthen:Z

.field private mLightIcon:Z

.field private mLightWallpaperFpod:Z

.field private mPm:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "trinket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "laurel_sprout"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->SUPPORT_STAR_ANIMATION:Z

    new-array v0, v1, [I

    .line 27
    sput-object v0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->ZERO_RES_ARRAY:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodAnimManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/fingerprint/FpodAnimManager$1;-><init>(Lcom/android/keyguard/fingerprint/FpodAnimManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mDozing:Z

    const/4 v1, 0x1

    .line 37
    iput v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mFpodAnimType:I

    .line 39
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mLightIcon:Z

    .line 136
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mFpodFrameAnimation:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "fod_animation_type"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v0, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 139
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 141
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    .line 143
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mContext:Landroid/content/Context;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mPm:Landroid/os/PowerManager;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 23
    sget-boolean v0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->SUPPORT_STAR_ANIMATION:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/fingerprint/FpodAnimManager;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mFpodAnimType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/fingerprint/FpodAnimManager;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getBackAnimResources(Z)[I
    .locals 5

    .line 312
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mFpodAnimType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-eqz p1, :cond_0

    .line 344
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->DEFAULT_AOD_BACK_ANIM_RES:[I

    return-object p0

    .line 346
    :cond_0
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mLightWallpaperFpod:Z

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mKeyguardAuthen:Z

    if-eqz p0, :cond_1

    .line 347
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_ICON_ANIM_RES:[I

    return-object p0

    .line 349
    :cond_1
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->DEFAULT_NORMAL_BACK_ANIM_RES:[I

    return-object p0

    .line 332
    :cond_2
    sget-object p1, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_SCAN_ANIM_RES:[I

    goto :goto_0

    .line 328
    :cond_3
    sget-object p1, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_SCAN_ANIM_RES:[I

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 321
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->DEFAULT_NORMAL_BACK_ANIM_RES:[I

    return-object p0

    .line 323
    :cond_5
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mLightWallpaperFpod:Z

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mKeyguardAuthen:Z

    if-eqz p0, :cond_6

    .line 324
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->DEFAULT_NORMAL_BACK_ANIM_RES:[I

    return-object p0

    .line 326
    :cond_6
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->DEFAULT_NORMAL_BACK_ANIM_RES:[I

    return-object p0

    .line 314
    :cond_7
    sget-boolean p1, Lcom/android/keyguard/fingerprint/FpodAnimManager;->SUPPORT_STAR_ANIMATION:Z

    if-nez p1, :cond_9

    .line 315
    sget-object p1, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_SCAN_ANIM_RES:[I

    .line 351
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mFpodFrameAnimation:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->getCurrentPosition()I

    move-result p0

    add-int/2addr p0, v1

    array-length v0, p1

    rem-int/2addr p0, v0

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_8

    add-int v3, p0, v2

    .line 354
    array-length v4, p1

    rem-int/2addr v3, v4

    aget v3, p1, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return-object v1

    .line 318
    :cond_9
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_SCAN_ANIM_RES:[I

    return-object p0
.end method

.method private getFalseAnimResources(Z)[I
    .locals 2

    .line 298
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mFpodAnimType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 299
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->ZERO_RES_ARRAY:[I

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 302
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->DEFAULT_NORMAL_BACK_ANIM_RES:[I

    return-object p0

    .line 304
    :cond_1
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mLightWallpaperFpod:Z

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mKeyguardAuthen:Z

    if-eqz p0, :cond_2

    .line 305
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->DEFAULT_NORMAL_BACK_ANIM_RES:[I

    return-object p0

    .line 307
    :cond_2
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_ICON_ANIM_RES:[I

    return-object p0
.end method

.method private getIconAnimResources(Z)[I
    .locals 0

    if-eqz p1, :cond_0

    .line 256
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_ICON_ANIM_RES:[I

    return-object p0

    .line 258
    :cond_0
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mLightWallpaperFpod:Z

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mKeyguardAuthen:Z

    if-eqz p0, :cond_1

    .line 259
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_ICON_ANIM_RES:[I

    return-object p0

    .line 261
    :cond_1
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_ICON_ANIM_RES:[I

    return-object p0
.end method

.method private getRecognizingAnimResources(Z)[I
    .locals 2

    .line 265
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mFpodAnimType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    .line 293
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->ZERO_RES_ARRAY:[I

    return-object p0

    .line 283
    :cond_0
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_SCAN_ANIM_RES:[I

    return-object p0

    .line 280
    :cond_1
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_SCAN_ANIM_RES:[I

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    .line 273
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_SCAN_ANIM_RES:[I

    return-object p0

    .line 275
    :cond_3
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mLightWallpaperFpod:Z

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mKeyguardAuthen:Z

    if-eqz p0, :cond_4

    .line 276
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_SCAN_ANIM_RES:[I

    return-object p0

    .line 278
    :cond_4
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_SCAN_ANIM_RES:[I

    return-object p0

    .line 267
    :cond_5
    sget-boolean p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->SUPPORT_STAR_ANIMATION:Z

    if-eqz p0, :cond_6

    .line 268
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_SCAN_ANIM_RES:[I

    return-object p0

    .line 270
    :cond_6
    sget-object p0, Lcom/android/keyguard/fingerprint/FpodUtils;->FINGERPRINT_SCAN_ANIM_RES:[I

    return-object p0
.end method

.method private isNightMode()Z
    .locals 1

    .line 210
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBackAnimArgs(Z)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;
    .locals 3

    .line 165
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->getBackAnimResources(Z)[I

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;-><init>([ILcom/android/keyguard/fingerprint/FpodAnimManager$1;)V

    .line 166
    iget p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mFpodAnimType:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 167
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mDozing:Z

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->getFingerIconResource(Z)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->access$700(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;I)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;

    .line 168
    new-instance p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$AlphaDismissDraw;

    invoke-direct {p0, v1}, Lcom/android/keyguard/fingerprint/FpodAnimManager$AlphaDismissDraw;-><init>(Lcom/android/keyguard/fingerprint/FpodAnimManager$1;)V

    invoke-static {v0, p0}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->access$1000(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;

    .line 170
    :cond_0
    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->access$500(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;

    move-result-object p0

    return-object p0
.end method

.method public getFalseAnimArgs(Z)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;
    .locals 1

    .line 161
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->getFalseAnimResources(Z)[I

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;-><init>([ILcom/android/keyguard/fingerprint/FpodAnimManager$1;)V

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->access$500(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;

    move-result-object p0

    return-object p0
.end method

.method public getFalseTipTranslationY()I
    .locals 1

    .line 216
    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mFpodAnimType:I

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x14

    return p0

    :cond_1
    const/16 p0, 0x3c

    return p0

    :cond_2
    const/16 p0, 0x50

    return p0

    :cond_3
    const/16 p0, 0x64

    return p0
.end method

.method public getFingerIconResource(Z)I
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFingerIconResource: mKeyguardAuthen = "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mKeyguardAuthen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLightWallpaperFpod = "

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mLightWallpaperFpod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnrolling = "

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mEnrolling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLightIcon = "

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mLightIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpodAnimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget v0, Lcom/android/systemui/R$drawable;->finger_image_normal:I

    .line 185
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mKeyguardAuthen:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    .line 188
    sget p0, Lcom/android/systemui/R$drawable;->finger_image_grey:I

    return p0

    .line 190
    :cond_0
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mLightWallpaperFpod:Z

    if-eqz p0, :cond_1

    .line 191
    sget p0, Lcom/android/systemui/R$drawable;->finger_image_light:I

    return p0

    :cond_1
    return v0

    .line 194
    :cond_2
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mEnrolling:Z

    if-eqz p1, :cond_5

    .line 196
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->isNightMode()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mPm:Landroid/os/PowerManager;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 199
    :cond_3
    sget p0, Lcom/android/systemui/R$drawable;->finger_image_light:I

    return p0

    .line 197
    :cond_4
    :goto_0
    sget p0, Lcom/android/systemui/R$drawable;->finger_image_aod:I

    return p0

    .line 203
    :cond_5
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mLightIcon:Z

    if-nez p0, :cond_6

    .line 204
    sget v0, Lcom/android/systemui/R$drawable;->finger_image_grey:I

    :cond_6
    return v0
.end method

.method public getIconAnimArgs(Z)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;
    .locals 1

    .line 147
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->getIconAnimResources(Z)[I

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;-><init>([ILcom/android/keyguard/fingerprint/FpodAnimManager$1;)V

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->access$500(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;

    move-result-object p0

    return-object p0
.end method

.method public getRecognizingAnimArgs(Z)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;
    .locals 2

    .line 151
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->getRecognizingAnimResources(Z)[I

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;-><init>([ILcom/android/keyguard/fingerprint/FpodAnimManager$1;)V

    .line 152
    iget p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mFpodAnimType:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 153
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->access$600(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;Z)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;

    .line 155
    :cond_0
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mDozing:Z

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->getFingerIconResource(Z)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->access$700(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;I)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;

    const/4 p0, 0x6

    .line 156
    invoke-static {v0, p0}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->access$800(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;I)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;

    .line 157
    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->access$500(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;

    move-result-object p0

    return-object p0
.end method

.method public onKeyguardAuthen(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mKeyguardAuthen:Z

    return-void
.end method

.method public setEnrolling(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mEnrolling:Z

    return-void
.end method

.method public setLightIcon(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mLightIcon:Z

    return-void
.end method

.method public startDozing()V
    .locals 1

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mDozing:Z

    return-void
.end method

.method public stopDozing()V
    .locals 1

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager;->mDozing:Z

    return-void
.end method
