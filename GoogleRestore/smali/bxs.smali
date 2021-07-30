.class final Lbxs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbxt;


# direct methods
.method public constructor <init>(Lbxt;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbxs;->b:Lbxt;

    iput-object p2, p0, Lbxs;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbxs;->b:Lbxt;

    iget-object v0, v0, Lbxt;->a:Lbxw;

    iget-object v0, v0, Lbxw;->i:Lbxz;

    .line 1
    sget-object v1, Lemc;->e:Lemc;

    iget-object v2, p0, Lbxs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbxz;->a(Lemc;Ljava/lang/String;)V

    return-void
.end method
