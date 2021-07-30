.class final Leez;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lefa;


# direct methods
.method public constructor <init>(Lefa;)V
    .locals 0

    iput-object p1, p0, Leez;->a:Lefa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Leez;->a:Lefa;

    iget-object v0, v0, Lefa;->a:Lefs;

    .line 1
    invoke-virtual {v0}, Lefs;->d()V

    return-void
.end method
