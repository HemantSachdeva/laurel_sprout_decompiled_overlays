.class final synthetic Lagj;
.super Ljava/lang/Object;

# interfaces
.implements Lbpa;


# instance fields
.field private final a:Lagm;


# direct methods
.method public constructor <init>(Lagm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lagj;->a:Lagm;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lagj;->a:Lagm;

    iget-object v0, v0, Lagm;->j:Lacw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to fetch contacts backup info. Retrying."

    invoke-virtual {v0, v2, p1, v1}, Laqd;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
