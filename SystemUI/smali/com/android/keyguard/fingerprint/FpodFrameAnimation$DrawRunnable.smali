.class Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;
.super Ljava/lang/Object;
.source "FpodFrameAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/FpodFrameAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawRunnable"
.end annotation


# instance fields
.field private final mAnimRes:[I

.field private final mBackgroundFrame:I

.field private final mBackgroundRes:I

.field private volatile mCurrentPosition:I

.field private final mCustomerDrawBitmap:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;

.field private mDrawing:Z

.field private final mFrameAnimationListener:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;

.field final synthetic this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;Lcom/android/keyguard/fingerprint/FpodFrameAnimation;[IIIILcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 52
    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;-><init>(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;[IIIILcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;[IIIILcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mDrawing:Z

    .line 57
    iput-object p2, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mAnimRes:[I

    .line 58
    array-length p1, p2

    rem-int/2addr p3, p1

    iput p3, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 59
    iput p4, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mBackgroundRes:I

    .line 60
    iput p5, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mBackgroundFrame:I

    .line 61
    iput-object p6, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;

    .line 62
    iput-object p7, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mCustomerDrawBitmap:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;)Lcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;

    return-object p0
.end method

.method private notifyFinish()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$900(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable$3;-><init>(Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyInterrupt()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$900(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable$2;-><init>(Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyStart()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$900(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable$1;-><init>(Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 0

    .line 74
    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mCurrentPosition:I

    return p0
.end method

.method public declared-synchronized getDrawing()Z
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mDrawing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 12

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->setDrawing(Z)V

    .line 85
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->notifyStart()V

    .line 86
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mAnimRes:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    array-length v1, v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v1}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$100(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 93
    iget v1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mBackgroundRes:I

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v4, v1}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$200(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    move v4, v2

    .line 95
    :catch_0
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->getDrawing()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 97
    iget-object v7, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mAnimRes:[I

    iget v8, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mCurrentPosition:I

    aget v7, v7, v8

    if-eqz v7, :cond_7

    .line 98
    iget-object v8, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v8}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$300(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)F

    move-result v8

    const v9, 0x3c23d70a    # 0.01f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    goto :goto_4

    .line 101
    :cond_3
    iget-object v8, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v8, v7}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$200(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;I)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_4

    .line 103
    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->stopDraw()V

    goto/16 :goto_6

    .line 106
    :cond_4
    iget-object v8, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    .line 107
    iget v9, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mBackgroundFrame:I

    if-lt v4, v9, :cond_6

    if-gtz v9, :cond_5

    goto :goto_2

    :cond_5
    move-object v9, v3

    goto :goto_3

    :cond_6
    :goto_2
    move-object v9, v1

    :goto_3
    const/high16 v10, 0x3f800000    # 1.0f

    .line 108
    iget-object v11, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mCustomerDrawBitmap:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;

    invoke-static {v8, v7, v9, v10, v11}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$500(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FLcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)V

    .line 109
    iget-object v8, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v8}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$100(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_5

    .line 99
    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v7}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$400(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)V

    .line 111
    :goto_5
    iget v7, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mCurrentPosition:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mCurrentPosition:I

    add-int/lit8 v4, v4, 0x1

    .line 113
    iget v7, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mCurrentPosition:I

    iget-object v8, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mAnimRes:[I

    array-length v8, v8

    if-ne v7, v8, :cond_9

    .line 114
    iget-object v7, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v7}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$600(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)I

    move-result v7

    if-ne v7, v0, :cond_8

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$100(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    move v0, v2

    goto :goto_6

    .line 118
    :cond_8
    iget-object v7, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v7}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$600(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 119
    iput v2, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 123
    :cond_9
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 124
    iget-object v5, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v5}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$700(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v5, v7

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    .line 125
    iget-object v5, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v5}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$700(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 130
    :cond_a
    :goto_6
    invoke-virtual {p0, v2}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->setDrawing(Z)V

    if-eqz v0, :cond_b

    .line 132
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->notifyInterrupt()V

    goto :goto_7

    .line 134
    :cond_b
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->notifyFinish()V

    :goto_7
    return-void

    .line 87
    :cond_c
    :goto_8
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->notifyFinish()V

    .line 88
    invoke-virtual {p0, v2}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->setDrawing(Z)V

    return-void
.end method

.method public declared-synchronized setDrawing(Z)V
    .locals 0

    monitor-enter p0

    .line 66
    :try_start_0
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->mDrawing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stopDraw()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->setDrawing(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$000(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 80
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->access$100(Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    return-void
.end method
