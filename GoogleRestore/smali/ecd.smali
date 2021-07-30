.class final Lecd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lecq;


# direct methods
.method public constructor <init>(Lecq;I)V
    .locals 0

    iput-object p1, p0, Lecd;->b:Lecq;

    iput p2, p0, Lecd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lecd;->b:Lecq;

    iget-object v0, v0, Lecq;->d:Lebc;

    iget v1, p0, Lecd;->a:I

    .line 1
    invoke-interface {v0, v1}, Lebc;->a(I)V

    return-void
.end method
