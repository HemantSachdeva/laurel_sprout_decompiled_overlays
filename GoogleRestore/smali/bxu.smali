.class final Lbxu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbxv;


# direct methods
.method public constructor <init>(Lbxv;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbxu;->b:Lbxv;

    iput-object p2, p0, Lbxu;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbxu;->b:Lbxv;

    iget-object v0, v0, Lbxv;->a:Lbxw;

    iget-object v0, v0, Lbxw;->i:Lbxz;

    .line 1
    sget-object v1, Lemc;->f:Lemc;

    iget-object v2, p0, Lbxu;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbxz;->a(Lemc;Ljava/lang/String;)V

    return-void
.end method
