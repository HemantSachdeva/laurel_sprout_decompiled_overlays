.class final Lack;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lach;

.field final synthetic b:Lacl;


# direct methods
.method public constructor <init>(Lacl;Lach;)V
    .locals 0

    iput-object p1, p0, Lack;->b:Lacl;

    iput-object p2, p0, Lack;->a:Lach;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lack;->b:Lacl;

    iget-object v1, p0, Lack;->a:Lach;

    .line 1
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lacl;->a(Lach;Z)V

    return-void
.end method
