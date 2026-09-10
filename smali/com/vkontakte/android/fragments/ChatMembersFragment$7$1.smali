.class Lcom/vkontakte/android/fragments/ChatMembersFragment$7$1;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$7;

.field private final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment$7;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$7;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7$1;->val$users:Ljava/util/ArrayList;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->access$0(Lcom/vkontakte/android/fragments/ChatMembersFragment$7;)Lcom/vkontakte/android/fragments/ChatMembersFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 327
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/ChatMembersFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->access$0(Lcom/vkontakte/android/fragments/ChatMembersFragment$7;)Lcom/vkontakte/android/fragments/ChatMembersFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$26(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    .line 328
    return-void
.end method
