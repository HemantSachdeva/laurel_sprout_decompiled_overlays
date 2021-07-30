.class final Lcyq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Lcyq;


# instance fields
.field volatile next:Lcyq;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcyq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcyq;-><init>([B)V

    sput-object v0, Lcyq;->a:Lcyq;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lcyr;->f:Lcye;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcye;->a(Lcyq;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcyq;)V
    .locals 1

    .line 2
    sget-object v0, Lcyr;->f:Lcye;

    invoke-virtual {v0, p0, p1}, Lcye;->a(Lcyq;Lcyq;)V

    return-void
.end method
