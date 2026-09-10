.class Lcom/vkontakte/android/QuickSearchActivity$4;
.super Ljava/lang/Object;
.source "QuickSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/QuickSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/QuickSearchActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 155
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 162
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const v1, 0x7f080137

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$9(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$10(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 169
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$11(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$11(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0, v4}, Lcom/vkontakte/android/QuickSearchActivity;->access$12(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$13(Lcom/vkontakte/android/QuickSearchActivity;)V

    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$14(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$15(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$14(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 179
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$15(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$14(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$16(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$15(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$16(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 185
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$15(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$16(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    return-void

    .line 166
    :cond_1
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;

    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-direct {v1, v2, v4}, Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;-><init>(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$5(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$LocalSearchRunnable;

    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-direct {v1, v2, v4}, Lcom/vkontakte/android/QuickSearchActivity$LocalSearchRunnable;-><init>(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/QuickSearchActivity$LocalSearchRunnable;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$8(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/Runnable;)V

    goto :goto_2
.end method
