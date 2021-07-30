.class public final Lbfv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field final synthetic b:Lbfx;


# direct methods
.method public constructor <init>(Lbfx;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    iput-object p1, p0, Lbfv;->b:Lbfx;

    iput-object p2, p0, Lbfv;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbfv;->b:Lbfx;

    iget-object v0, v0, Lbfx;->a:Ljava/util/Map;

    iget-object v1, p0, Lbfv;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 1
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
