.class final Lefc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lefx;


# instance fields
.field final synthetic a:Lefs;


# direct methods
.method public constructor <init>(Lefs;)V
    .locals 0

    iput-object p1, p0, Lefc;->a:Lefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lefc;->a:Lefs;

    iget-object v1, v0, Lefs;->F:Ledt;

    iget-object v0, v0, Lefs;->t:Lebx;

    .line 1
    invoke-virtual {v1, v0, p1}, Ledt;->a(Ljava/lang/Object;Z)V

    return-void
.end method
