.class public Lcom/vkontakte/android/api/WallDeleteComment;
.super Lcom/vkontakte/android/APIRequest;
.source "WallDeleteComment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/WallDeleteComment$Callback;
    }
.end annotation


# static fields
.field private static final methods:[Ljava/lang/String;


# instance fields
.field callback:Lcom/vkontakte/android/api/WallDeleteComment$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wall.deleteComment"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photos.deleteComment"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "video.deleteComment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkontakte/android/api/WallDeleteComment;->methods:[Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "cid"    # I
    .param p4, "type"    # I

    .prologue
    .line 14
    sget-object v0, Lcom/vkontakte/android/api/WallDeleteComment;->methods:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    if-nez p4, :cond_0

    .line 17
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallDeleteComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "cid"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 20
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallDeleteComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "cid"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 22
    :cond_1
    const/4 v0, 0x2

    if-ne p4, v0, :cond_2

    .line 23
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallDeleteComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "cid"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 25
    :cond_2
    new-instance v0, Lcom/vkontakte/android/api/WallDeleteComment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/WallDeleteComment$1;-><init>(Lcom/vkontakte/android/api/WallDeleteComment;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/WallDeleteComment;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 35
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/WallDeleteComment;->callback:Lcom/vkontakte/android/api/WallDeleteComment$Callback;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/api/WallDeleteComment;->callback:Lcom/vkontakte/android/api/WallDeleteComment$Callback;

    invoke-interface {v0}, Lcom/vkontakte/android/api/WallDeleteComment$Callback;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallDeleteComment$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallDeleteComment$Callback;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkontakte/android/api/WallDeleteComment;->callback:Lcom/vkontakte/android/api/WallDeleteComment$Callback;

    .line 47
    return-object p0
.end method
