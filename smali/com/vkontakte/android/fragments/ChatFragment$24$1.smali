.class Lcom/vkontakte/android/fragments/ChatFragment$24$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$24;->onMessagesLoaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

.field private final synthetic val$msgs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$24;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->val$msgs:Ljava/util/ArrayList;

    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v9, 0x7f0800d4

    const/16 v6, 0x12c

    const/4 v8, 0x1

    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 1095
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .local v2, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1099
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$38(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1102
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1103
    .local v0, "imsgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1108
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1109
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$43(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/ErrorView;->clearAnimation()V

    .line 1110
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$43(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 1111
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$19(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-static {v3, v8, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1112
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$18(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-static {v3, v7, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1114
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 1115
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$32(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1116
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$32(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0800d5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$50(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1141
    :cond_1
    :goto_3
    return-void

    .line 1096
    .end local v0    # "imsgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 1097
    .local v1, "m":Lcom/vkontakte/android/Message;
    iget v4, v1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1099
    .end local v1    # "m":Lcom/vkontakte/android/Message;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 1100
    .restart local v1    # "m":Lcom/vkontakte/android/Message;
    iget v4, v1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1104
    .end local v1    # "m":Lcom/vkontakte/android/Message;
    .restart local v0    # "imsgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 1105
    .restart local v1    # "m":Lcom/vkontakte/android/Message;
    iget v3, v1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 1106
    :cond_5
    iget v3, v1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1120
    .end local v1    # "m":Lcom/vkontakte/android/Message;
    :cond_6
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$32(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$32(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0800d5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/vkontakte/android/fragments/ChatFragment;->access$50(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1124
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$34(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1125
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$38(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1133
    :goto_4
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$9(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1134
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$51(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1135
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$36(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1136
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$52(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1137
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/vkontakte/android/fragments/ChatFragment;->access$36(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1138
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$37(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1139
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$20(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_3

    .line 1126
    :cond_7
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_8

    .line 1128
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->val$msgs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1e

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$39(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    .line 1129
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$38(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->val$msgs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1e

    invoke-virtual {v4, v7, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 1131
    :cond_8
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->val$msgs:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$39(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    goto/16 :goto_4
.end method
