.class public Lcom/vkontakte/android/api/GroupsLeave;
.super Lcom/vkontakte/android/APIRequest;
.source "GroupsLeave.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GroupsLeave$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GroupsLeave$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "gid"    # I

    .prologue
    .line 10
    const-string v0, "groups.leave"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string v0, "gid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/GroupsLeave;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 13
    new-instance v0, Lcom/vkontakte/android/api/GroupsLeave$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/GroupsLeave$1;-><init>(Lcom/vkontakte/android/api/GroupsLeave;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/GroupsLeave;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 23
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/GroupsLeave;->callback:Lcom/vkontakte/android/api/GroupsLeave$Callback;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/api/GroupsLeave;->callback:Lcom/vkontakte/android/api/GroupsLeave$Callback;

    invoke-interface {v0}, Lcom/vkontakte/android/api/GroupsLeave$Callback;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsLeave$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsLeave$Callback;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsLeave;->callback:Lcom/vkontakte/android/api/GroupsLeave$Callback;

    .line 35
    return-object p0
.end method
