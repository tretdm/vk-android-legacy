.class Lcom/vkontakte/android/fragments/ChatFragment$19$1$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$19$1;->onUsersLoaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/fragments/ChatFragment$19$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$19$1;)V
    .locals 0

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$1$1;->this$2:Lcom/vkontakte/android/fragments/ChatFragment$19$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$1$1;->this$2:Lcom/vkontakte/android/fragments/ChatFragment$19$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$19$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5700(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1170
    return-void
.end method
