.class public Lcom/android/keyguard/fingerprint/FpodFrameAnimation;
.super Ljava/lang/Object;
.source "FpodFrameAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;,
        Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;,
        Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;
    }
.end annotation


# instance fields
.field private volatile alpha:F

.field private final mCallBack:Landroid/view/SurfaceHolder$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDrawHandler:Landroid/os/Handler;

.field private mDrawRunnable:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;

.field private final mDrawThread:Landroid/os/HandlerThread;

.field private volatile mFrameInterval:I

.field private final mHandler:Landroid/os/Handler;

.field private mLastDrawAnim:Z

.field private volatile mMode:I

.field private final mRecycleBitmapQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSupportInBitmap:Z

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V
    .locals 3

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->alpha:F

    const/16 v0, 0x20

    .line 29
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mFrameInterval:I

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mLastDrawAnim:Z

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mMode:I

    .line 33
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mRecycleBitmapQueue:Ljava/util/Queue;

    .line 34
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mSupportInBitmap:Z

    .line 178
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mSurfaceView:Landroid/view/SurfaceView;

    .line 179
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 180
    iput-object p2, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mCallBack:Landroid/view/SurfaceHolder$Callback;

    const/4 p2, -0x3

    .line 181
    invoke-interface {v1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 182
    iget-object p2, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 183
    iget-object p2, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mCallBack:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 184
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mContext:Landroid/content/Context;

    .line 185
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "FrameAnimation Draw Thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawThread:Landroid/os/HandlerThread;

    .line 186
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 187
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)Landroid/os/HandlerThread;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)Ljava/util/Queue;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mRecycleBitmapQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;Landroid/graphics/Bitmap;F)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->drawBitmap(Landroid/graphics/Bitmap;F)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->decodeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->alpha:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->clearSurface()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FLcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FLcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mMode:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mFrameInterval:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private clearSurface()V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 322
    :try_start_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V

    .line 325
    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private configureDrawMatrix(Landroid/graphics/Bitmap;F)Landroid/graphics/Matrix;
    .locals 3

    .line 280
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 281
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 282
    iget-object v2, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float v2, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    .line 284
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 285
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p1

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    mul-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    .line 286
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 287
    invoke-virtual {v0, v2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method private decodeBitmap(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 338
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mSupportInBitmap:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mRecycleBitmapQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mRecycleBitmapQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 341
    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 342
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 343
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 344
    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 346
    :try_start_0
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 348
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;F)V
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FLcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)V

    return-void
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FLcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 302
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->configureDrawMatrix(Landroid/graphics/Bitmap;F)Landroid/graphics/Matrix;

    move-result-object v1

    const/4 v2, 0x0

    .line 303
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 305
    invoke-direct {p0, p2, p3}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->configureDrawMatrix(Landroid/graphics/Bitmap;F)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {v0, p2, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    if-nez p4, :cond_2

    .line 308
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 310
    :cond_2
    invoke-interface {p4, v0, p1, v1}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 312
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 314
    :catchall_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    const-string p0, "FpodFrameAnimation"

    const-string p1, "drawBitmap: bitmap or canvas is null"

    .line 298
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    const-string v0, "FpodFrameAnimation"

    const-string v1, "clean"

    .line 270
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->stopAnimation()V

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$2;-><init>(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public draw(IZF)V
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "draw: res = "

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anim = "

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scale = "

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpodFrameAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->stopAnimation()V

    .line 250
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mLastDrawAnim:Z

    .line 252
    iput-boolean p2, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mLastDrawAnim:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez p2, :cond_2

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mRecycleBitmapQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$1;-><init>(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;IFZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->isAniming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAniming()Z
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->getDrawing()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFrameInterval(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 192
    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mFrameInterval:I

    return-void

    .line 195
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "frameInterval < 0"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong mode: "

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mMode:I

    return-void
.end method

.method public startAnimation([IIIILcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)V
    .locals 11

    move-object v9, p0

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, v9, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mLastDrawAnim:Z

    .line 211
    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->stopAnimation()V

    .line 212
    new-instance v10, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;-><init>(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;Lcom/android/keyguard/fingerprint/FpodFrameAnimation;[IIIILcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)V

    iput-object v10, v9, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;

    .line 213
    iget-object v0, v9, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;

    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->getDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->stopDraw()V

    :cond_0
    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;

    return-void
.end method
