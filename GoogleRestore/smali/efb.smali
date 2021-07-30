.class public final Lefb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lefs;


# direct methods
.method public constructor <init>(Lefs;)V
    .locals 0

    iput-object p1, p0, Lefb;->a:Lefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lefb;->a:Lefs;

    const/4 v1, 0x0

    iput-object v1, v0, Lefs;->G:Ldza;

    .line 1
    invoke-virtual {v0}, Lefs;->g()V

    return-void
.end method
