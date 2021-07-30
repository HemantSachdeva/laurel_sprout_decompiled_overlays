.class final Lecl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lecp;


# direct methods
.method public constructor <init>(Lecp;)V
    .locals 0

    iput-object p1, p0, Lecl;->a:Lecp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lecl;->a:Lecp;

    iget-object v0, v0, Lecp;->a:Lebe;

    .line 1
    invoke-interface {v0}, Lebe;->a()V

    return-void
.end method
