.class final Lech;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lecq;


# direct methods
.method public constructor <init>(Lecq;)V
    .locals 0

    iput-object p1, p0, Lech;->a:Lecq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lech;->a:Lecq;

    iget-object v0, v0, Lecq;->d:Lebc;

    .line 1
    invoke-interface {v0}, Lebc;->h()V

    return-void
.end method
