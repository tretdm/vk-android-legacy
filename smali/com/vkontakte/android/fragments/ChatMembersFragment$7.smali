.class Lcom/vkontakte/android/fragments/ChatMembersFragment$7;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 335
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/ImagePickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "allow_album"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    const-string v2, "limit"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$18(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$18(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$18(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v3, 0x7f08007d

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const-string v2, "custom"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 343
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const-string v2, "no_thumbs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const v3, 0x9807

    invoke-virtual {v2, v1, v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 345
    return-void
.end method
