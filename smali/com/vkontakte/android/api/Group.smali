.class public Lcom/vkontakte/android/api/Group;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Lcom/vkontakte/android/Indexable;


# static fields
.field public static final TYPE_EVENT:I = 0x1

.field public static final TYPE_GROUP:I = 0x0

.field public static final TYPE_PUBLIC:I = 0x2


# instance fields
.field public id:I

.field public isAdmin:Z

.field public isClosed:Z

.field public name:Ljava/lang/String;

.field public photo:Ljava/lang/String;

.field public startTime:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndexChars()[C
    .locals 5

    .prologue
    .line 21
    iget-object v3, p0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "words":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [C

    .line 23
    .local v1, "result":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 27
    return-object v1

    .line 24
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 23
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_1
    aget-object v3, v2, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v1, v0

    goto :goto_1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
