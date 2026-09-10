.class public Lcom/vkontakte/android/api/WallRestoreComment;
.super Lcom/vkontakte/android/APIRequest;
.source "WallRestoreComment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/WallRestoreComment$Callback;
    }
.end annotation


# static fields
.field private static final methods:[Ljava/lang/String;


# instance fields
.field callback:Lcom/vkontakte/android/api/WallRestoreComment$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wall.restoreComment"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photos.restoreComment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkontakte/android/api/WallRestoreComment;->methods:[Ljava/lang/String;

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
    sget-object v0, Lcom/vkontakte/android/api/WallRestoreComment;->methods:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    if-nez p4, :cond_0

    .line 17
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallRestoreComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "cid"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 20
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallRestoreComment;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "cid"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 21
    :cond_1
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/vkontakte/android/api/WallRestoreComment;->callback:Lcom/vkontakte/android/api/WallRestoreComment$Callback;

    if-nez v1, :cond_0

    .line 35
    :goto_0
    return-void

    .line 29
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 30
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 31
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/WallRestoreComment;->callback:Lcom/vkontakte/android/api/WallRestoreComment$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/WallRestoreComment$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 33
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/WallRestoreComment;->callback:Lcom/vkontakte/android/api/WallRestoreComment$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/WallRestoreComment$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallRestoreComment$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallRestoreComment$Callback;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkontakte/android/api/WallRestoreComment;->callback:Lcom/vkontakte/android/api/WallRestoreComment$Callback;

    .line 39
    return-object p0
.end method
