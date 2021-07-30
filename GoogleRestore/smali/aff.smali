.class public final synthetic Laff;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

.field private final b:Lafl;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;Lafl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laff;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    iput-object p2, p0, Laff;->b:Lafl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Laff;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    iget-object v6, p0, Laff;->b:Lafl;

    iget v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v5, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->h:Landroid/view/animation/Interpolator;

    const-wide/16 v3, 0xc0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(FFJLandroid/view/animation/Interpolator;Lafl;Ljava/lang/Runnable;)V

    return-void
.end method
