.class public final synthetic Laoq;
.super Ljava/lang/Object;

# interfaces
.implements Laow;


# instance fields
.field private final a:Laox;

.field private final b:Landroid/accounts/Account;

.field private final c:J


# direct methods
.method public constructor <init>(Laox;Landroid/accounts/Account;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laoq;->a:Laox;

    iput-object p2, p0, Laoq;->b:Landroid/accounts/Account;

    iput-wide p3, p0, Laoq;->c:J

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Laoq;->a:Laox;

    iget-object v1, p0, Laoq;->b:Landroid/accounts/Account;

    iget-wide v2, p0, Laoq;->c:J

    invoke-virtual {v0}, Laox;->a()Laao;

    move-result-object v0

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Laao;->a(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
