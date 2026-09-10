.class Lcom/vkontakte/android/fragments/GroupListFragment$8$1;
.super Ljava/lang/Object;
.source "GroupListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupListFragment$8;->success(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/GroupListFragment$8;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupListFragment$8;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/GroupListFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/GroupListFragment$8;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$1400(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/GroupListFragment$8;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/GroupListFragment$8;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$1300(Lcom/vkontakte/android/fragments/GroupListFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 337
    return-void
.end method
