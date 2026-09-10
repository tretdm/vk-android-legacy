.class Lcom/vkontakte/android/fragments/ChatFragment$31$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$31;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$31;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$31;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$31$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$31;

    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ChatFragment$31$1;)Lcom/vkontakte/android/fragments/ChatFragment$31;
    .locals 1

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$31$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$31;

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2015
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Users loaded "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2019
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$31$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$31;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment$31;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$31;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$24(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2020
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$31$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$31;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment$31;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$31;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$24(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/ChatFragment$31$1$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ChatFragment$31$1$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$31$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 2024
    :cond_0
    return-void

    .line 2016
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 2017
    .local v0, "u":Lcom/vkontakte/android/UserProfile;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$31$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$31;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment$31;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$31;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$21(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
