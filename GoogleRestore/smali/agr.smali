.class public final synthetic Lagr;
.super Ljava/lang/Object;

# interfaces
.implements Lw;


# instance fields
.field private final a:Lu;


# direct methods
.method public constructor <init>(Lu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lagr;->a:Lu;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lagr;->a:Lu;

    check-cast p1, Lahe;

    iput-object p1, v0, Lu;->l:Lahe;

    invoke-virtual {v0}, Lu;->e()V

    return-void
.end method
