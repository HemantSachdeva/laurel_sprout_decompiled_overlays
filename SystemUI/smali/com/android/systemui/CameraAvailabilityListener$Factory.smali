.class public final Lcom/android/systemui/CameraAvailabilityListener$Factory;
.super Ljava/lang/Object;
.source "CameraAvailabilityListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/CameraAvailabilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraAvailabilityListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraAvailabilityListener.kt\ncom/android/systemui/CameraAvailabilityListener$Factory\n*L\n1#1,147:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/CameraAvailabilityListener$Factory;-><init>()V

    return-void
.end method

.method private final pathFromString(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 1

    if-eqz p1, :cond_0

    .line 135
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 138
    :try_start_0
    invoke-static {p0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    const-string p1, "PathParser.createPathFromPathData(spec)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 140
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid protection path"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 135
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final build(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/android/systemui/CameraAvailabilityListener;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera"

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 126
    sget v0, Lcom/android/systemui/R$string;->config_frontBuiltInDisplayCutoutProtection:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    sget v1, Lcom/android/systemui/R$string;->config_protectedCameraId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 128
    sget v1, Lcom/android/systemui/R$string;->config_cameraProtectionExcludedPackages:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 130
    new-instance p1, Lcom/android/systemui/CameraAvailabilityListener;

    const-string v1, "pathString"

    .line 131
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/CameraAvailabilityListener$Factory;->pathFromString(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v3

    const-string p0, "cameraId"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "excluded"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    move-object v6, p2

    .line 130
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/CameraAvailabilityListener;-><init>(Landroid/hardware/camera2/CameraManager;Landroid/graphics/Path;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-object p1

    .line 124
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.hardware.camera2.CameraManager"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
