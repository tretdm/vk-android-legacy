.class Lcom/vkontakte/android/ChatActivity$38;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesSetActivity$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->sendTypingIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$38;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 2152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 2161
    return-void
.end method

.method public success()V
    .locals 3

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$38;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ChatActivity;->access$56(Lcom/vkontakte/android/ChatActivity;J)V

    .line 2156
    return-void
.end method
