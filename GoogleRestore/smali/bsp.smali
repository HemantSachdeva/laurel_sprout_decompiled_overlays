.class final synthetic Lbsp;
.super Ljava/lang/Object;

# interfaces
.implements Lcrm;


# instance fields
.field private final a:Leip;


# direct methods
.method public constructor <init>(Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsp;->a:Leip;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbsp;->a:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
