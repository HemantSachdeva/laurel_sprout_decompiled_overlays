.class final Ledy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ledz;


# direct methods
.method public constructor <init>(Ledz;)V
    .locals 0

    iput-object p1, p0, Ledy;->a:Ledz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ledy;->a:Ledz;

    iget-object v0, v0, Ledz;->b:Leen;

    iget-object v1, v0, Leen;->k:Lefy;

    const/4 v2, 0x0

    iput-object v2, v0, Leen;->j:Ldza;

    iput-object v2, v0, Leen;->k:Lefy;

    .line 1
    sget-object v0, Ldyv;->i:Ldyv;

    .line 2
    const-string v2, "InternalSubchannel closed transport due to address change"

    invoke-virtual {v0, v2}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    .line 1
    invoke-interface {v1, v0}, Lefy;->a(Ldyv;)V

    return-void
.end method
