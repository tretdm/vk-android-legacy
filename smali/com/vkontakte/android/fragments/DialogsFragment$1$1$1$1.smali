.class Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1$1;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;

.field private final synthetic val$e:Lcom/vkontakte/android/DialogEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;Lcom/vkontakte/android/DialogEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1$1;->this$3:Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1$1;->val$e:Lcom/vkontakte/android/DialogEntry;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1$1;->this$3:Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;)Lcom/vkontakte/android/fragments/DialogsFragment$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$1$1;)Lcom/vkontakte/android/fragments/DialogsFragment$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$1;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$1;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1$1;->val$e:Lcom/vkontakte/android/DialogEntry;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1$1;->this$3:Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$1$1$1;)Lcom/vkontakte/android/fragments/DialogsFragment$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$1$1;)Lcom/vkontakte/android/fragments/DialogsFragment$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$1;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$1;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 162
    return-void
.end method
