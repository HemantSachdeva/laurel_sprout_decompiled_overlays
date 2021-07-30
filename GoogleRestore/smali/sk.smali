.class public final Lsk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsf;


# instance fields
.field final synthetic a:Lsl;

.field private final b:Lsj;


# direct methods
.method public constructor <init>(Lsl;Lsj;)V
    .locals 0

    iput-object p1, p0, Lsk;->a:Lsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsk;->b:Lsj;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lsk;->a:Lsl;

    iget-object v0, v0, Lsl;->a:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lsk;->b:Lsj;

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsk;->b:Lsj;

    .line 2
    invoke-virtual {v0, p0}, Lsj;->b(Lsf;)V

    return-void
.end method
