.class public Lcom/vkontakte/android/api/Group;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Lcom/vkontakte/android/Indexable;


# static fields
.field public static final ADMIN_LEVEL_ADMIN:I = 0x3

.field public static final ADMIN_LEVEL_EDITOR:I = 0x2

.field public static final ADMIN_LEVEL_MODERATOR:I = 0x1

.field public static final ADMIN_LEVEL_NONE:I = 0x0

.field public static final TYPE_EVENT:I = 0x1

.field public static final TYPE_GROUP:I = 0x0

.field public static final TYPE_PUBLIC:I = 0x2


# instance fields
.field public adminLevel:I

.field public id:I

.field public isAdmin:Z

.field public isClosed:I

.field public name:Ljava/lang/String;

.field public photo:Ljava/lang/String;

.field public startTime:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "gr"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_0
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/api/Group;->id:I

    .line 36
    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    .line 37
    const-string v3, "is_admin"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/vkontakte/android/api/Group;->isAdmin:Z

    .line 38
    const-string v1, "admin_level"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/api/Group;->adminLevel:I

    .line 39
    const-string v1, "is_closed"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/api/Group;->isClosed:I

    .line 40
    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    const-string v1, "photo_100"

    :goto_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/vkontakte/android/api/Group;->type:I

    .line 42
    const-string v1, "start_date"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/api/Group;->startTime:I

    .line 43
    const-string v1, "admin_level"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/api/Group;->adminLevel:I

    .line 44
    const-string v1, "event"

    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/vkontakte/android/api/Group;->type:I

    .line 45
    :cond_0
    const-string v1, "page"

    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Lcom/vkontakte/android/api/Group;->type:I

    .line 49
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v2

    .line 37
    goto :goto_0

    .line 40
    :cond_3
    const-string v1, "photo_50"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error parsing group"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public getIndexChars()[C
    .locals 5

    .prologue
    .line 53
    iget-object v3, p0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "words":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [C

    .line 55
    .local v1, "result":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 59
    return-object v1

    .line 56
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 55
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
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
    .line 63
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
