.class public final enum Lejz;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lejz;

.field public static final enum b:Lejz;

.field public static final enum c:Lejz;

.field public static final enum d:Lejz;

.field public static final enum e:Lejz;

.field public static final enum f:Lejz;

.field public static final enum g:Lejz;

.field private static final synthetic i:[Lejz;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lejz;

    .line 1
    const-string v1, "VIEWSCREEN_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lejz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lejz;->a:Lejz;

    new-instance v1, Lejz;

    .line 2
    const-string v3, "EVENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lejz;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lejz;->b:Lejz;

    new-instance v3, Lejz;

    .line 3
    const-string v5, "ICS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lejz;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lejz;->c:Lejz;

    new-instance v5, Lejz;

    .line 4
    const-string v7, "SMARTMAIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lejz;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lejz;->d:Lejz;

    new-instance v7, Lejz;

    .line 5
    const-string v9, "GROOVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lejz;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lejz;->e:Lejz;

    new-instance v9, Lejz;

    .line 6
    const-string v11, "REMINDER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lejz;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lejz;->f:Lejz;

    new-instance v11, Lejz;

    .line 7
    const-string v13, "BIRTHDAY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lejz;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lejz;->g:Lejz;

    const/4 v13, 0x7

    new-array v13, v13, [Lejz;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lejz;->i:[Lejz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lejz;->h:I

    return-void
.end method

.method public static a(I)Lejz;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lejz;->g:Lejz;

    return-object p0

    :pswitch_1
    sget-object p0, Lejz;->f:Lejz;

    return-object p0

    :pswitch_2
    sget-object p0, Lejz;->e:Lejz;

    return-object p0

    :pswitch_3
    sget-object p0, Lejz;->d:Lejz;

    return-object p0

    :pswitch_4
    sget-object p0, Lejz;->c:Lejz;

    return-object p0

    :pswitch_5
    sget-object p0, Lejz;->b:Lejz;

    return-object p0

    :pswitch_6
    sget-object p0, Lejz;->a:Lejz;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lejy;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lejz;
    .locals 1

    sget-object v0, Lejz;->i:[Lejz;

    .line 16
    invoke-virtual {v0}, [Lejz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lejz;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lejz;->h:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lejz;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Lejz;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
