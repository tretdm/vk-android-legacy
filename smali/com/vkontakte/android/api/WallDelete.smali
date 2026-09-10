.class public Lcom/vkontakte/android/api/WallDelete;
.super Lcom/vkontakte/android/APIRequest;
.source "WallDelete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/WallDelete$Callback;
    }
.end annotation


# static fields
.field private static final methods:[Ljava/lang/String;


# instance fields
.field callback:Lcom/vkontakte/android/api/WallDelete$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wall.delete"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photos.delete"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "video.delete"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkontakte/android/api/WallDelete;->methods:[Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "ownerID"    # I
    .param p2, "postID"    # I
    .param p3, "type"    # I

    .prologue
    .line 14
    sget-object v0, Lcom/vkontakte/android/api/WallDelete;->methods:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    if-nez p3, :cond_0

    .line 16
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallDelete;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "post_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 17
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 18
    const-string v0, "oid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallDelete;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 20
    const-string v0, "oid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallDelete;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "vid"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 22
    :cond_2
    new-instance v0, Lcom/vkontakte/android/api/WallDelete$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/WallDelete$1;-><init>(Lcom/vkontakte/android/api/WallDelete;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/WallDelete;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 32
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/WallDelete;->callback:Lcom/vkontakte/android/api/WallDelete$Callback;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/api/WallDelete;->callback:Lcom/vkontakte/android/api/WallDelete$Callback;

    invoke-interface {v0}, Lcom/vkontakte/android/api/WallDelete$Callback;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallDelete$Callback;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/api/WallDelete;->callback:Lcom/vkontakte/android/api/WallDelete$Callback;

    .line 44
    return-object p0
.end method
