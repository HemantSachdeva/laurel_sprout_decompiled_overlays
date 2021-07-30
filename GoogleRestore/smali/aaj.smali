.class public final enum Laaj;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Laaj;

.field public static final enum b:Laaj;

.field public static final enum c:Laaj;

.field public static final enum d:Laaj;

.field public static final enum e:Laaj;

.field public static final enum f:Laaj;

.field public static final enum g:Laaj;

.field public static final enum h:Laaj;

.field public static final enum i:Laaj;

.field public static final enum j:Laaj;

.field public static final enum k:Laaj;

.field public static final enum l:Laaj;

.field public static final enum m:Laaj;

.field private static final synthetic o:[Laaj;


# instance fields
.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Laaj;

    .line 1
    const-string v1, "UNKNOWN_FOLDER_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Laaj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laaj;->a:Laaj;

    new-instance v1, Laaj;

    .line 2
    const-string v3, "COMBINED_INBOX"

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v1, v3, v4, v5}, Laaj;-><init>(Ljava/lang/String;II)V

    sput-object v1, Laaj;->b:Laaj;

    new-instance v3, Laaj;

    .line 3
    const-string v6, "DRAFT"

    const/4 v7, 0x2

    const/4 v8, 0x6

    invoke-direct {v3, v6, v7, v8}, Laaj;-><init>(Ljava/lang/String;II)V

    sput-object v3, Laaj;->c:Laaj;

    new-instance v6, Laaj;

    .line 4
    const-string v9, "FLAGGED"

    const/4 v10, 0x3

    const/16 v11, 0xb

    invoke-direct {v6, v9, v10, v11}, Laaj;-><init>(Ljava/lang/String;II)V

    sput-object v6, Laaj;->d:Laaj;

    new-instance v9, Laaj;

    .line 5
    const-string v12, "IMPORTANT"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v5, v13}, Laaj;-><init>(Ljava/lang/String;II)V

    sput-object v9, Laaj;->e:Laaj;

    new-instance v12, Laaj;

    .line 6
    const-string v14, "INBOX"

    invoke-direct {v12, v14, v13, v7}, Laaj;-><init>(Ljava/lang/String;II)V

    sput-object v12, Laaj;->f:Laaj;

    new-instance v14, Laaj;

    .line 7
    const-string v15, "INBOX_SECTION"

    invoke-direct {v14, v15, v8, v10}, Laaj;-><init>(Ljava/lang/String;II)V

    sput-object v14, Laaj;->g:Laaj;

    new-instance v15, Laaj;

    .line 8
    const-string v8, "OTHER_FOLDER_TYPE"

    const/4 v13, 0x7

    invoke-direct {v15, v8, v13, v4}, Laaj;-><init>(Ljava/lang/String;II)V

    sput-object v15, Laaj;->h:Laaj;

    new-instance v8, Laaj;

    .line 9
    const-string v5, "OUTBOX"

    const/16 v10, 0x8

    invoke-direct {v8, v5, v10, v13}, Laaj;-><init>(Ljava/lang/String;II)V

    sput-object v8, Laaj;->i:Laaj;

    new-instance v5, Laaj;

    .line 10
    const-string v13, "SEARCH"

    const/16 v7, 0x9

    const/16 v4, 0xc

    invoke-direct {v5, v13, v7, v4}, Laaj;-><init>(Ljava/lang/String;II)V

    sput-object v5, Laaj;->j:Laaj;

    new-instance v13, Laaj;

    .line 11
    const-string v2, "SENT"

    const/16 v4, 0xa

    invoke-direct {v13, v2, v4, v10}, Laaj;-><init>(Ljava/lang/String;II)V

    sput-object v13, Laaj;->k:Laaj;

    new-instance v2, Laaj;

    .line 12
    const-string v10, "SPAM"

    invoke-direct {v2, v10, v11, v7}, Laaj;-><init>(Ljava/lang/String;II)V

    sput-object v2, Laaj;->l:Laaj;

    new-instance v10, Laaj;

    .line 13
    const-string v11, "STARRED"

    const/16 v7, 0xc

    invoke-direct {v10, v11, v7, v4}, Laaj;-><init>(Ljava/lang/String;II)V

    sput-object v10, Laaj;->m:Laaj;

    const/16 v7, 0xd

    new-array v7, v7, [Laaj;

    const/4 v11, 0x0

    aput-object v0, v7, v11

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v6, v7, v0

    const/4 v0, 0x4

    aput-object v9, v7, v0

    const/4 v0, 0x5

    aput-object v12, v7, v0

    const/4 v0, 0x6

    aput-object v14, v7, v0

    const/4 v0, 0x7

    aput-object v15, v7, v0

    const/16 v0, 0x8

    aput-object v8, v7, v0

    const/16 v0, 0x9

    aput-object v5, v7, v0

    aput-object v13, v7, v4

    const/16 v0, 0xb

    aput-object v2, v7, v0

    const/16 v0, 0xc

    aput-object v10, v7, v0

    sput-object v7, Laaj;->o:[Laaj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Laaj;->n:I

    return-void
.end method

.method public static a(I)Laaj;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Laaj;->j:Laaj;

    return-object p0

    :pswitch_1
    sget-object p0, Laaj;->d:Laaj;

    return-object p0

    :pswitch_2
    sget-object p0, Laaj;->m:Laaj;

    return-object p0

    :pswitch_3
    sget-object p0, Laaj;->l:Laaj;

    return-object p0

    :pswitch_4
    sget-object p0, Laaj;->k:Laaj;

    return-object p0

    :pswitch_5
    sget-object p0, Laaj;->i:Laaj;

    return-object p0

    :pswitch_6
    sget-object p0, Laaj;->c:Laaj;

    return-object p0

    :pswitch_7
    sget-object p0, Laaj;->e:Laaj;

    return-object p0

    :pswitch_8
    sget-object p0, Laaj;->b:Laaj;

    return-object p0

    :pswitch_9
    sget-object p0, Laaj;->g:Laaj;

    return-object p0

    :pswitch_a
    sget-object p0, Laaj;->f:Laaj;

    return-object p0

    :pswitch_b
    sget-object p0, Laaj;->h:Laaj;

    return-object p0

    :pswitch_c
    sget-object p0, Laaj;->a:Laaj;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Laai;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Laaj;
    .locals 1

    sget-object v0, Laaj;->o:[Laaj;

    .line 22
    invoke-virtual {v0}, [Laaj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laaj;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Laaj;->n:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laaj;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Laaj;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
