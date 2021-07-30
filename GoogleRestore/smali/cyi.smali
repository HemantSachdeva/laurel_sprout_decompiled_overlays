.class final Lcyi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Lcyi;


# instance fields
.field final b:Ljava/lang/Runnable;

.field final c:Ljava/util/concurrent/Executor;

.field next:Lcyi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcyi;

    .line 1
    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcyi;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcyi;->a:Lcyi;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcyi;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Lcyi;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
