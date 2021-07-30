.class public final Lbpo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbpn;

    .line 1
    invoke-direct {v0}, Lbpn;-><init>()V

    sput-object v0, Lbpo;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lbpm;

    invoke-direct {v0}, Lbpm;-><init>()V

    sput-object v0, Lbpo;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
