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
    .line 155
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 161
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 168
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

    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const v1, 0x7f080164

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$300(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V

    .line 174
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$400(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$500(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$500(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 178
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0, v4}, Lcom/vkontakte/android/QuickSearchActivity;->access$502(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$600(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$700(Lcom/vkontakte/android/QuickSearchActivity;)V

    .line 182
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$800(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$900(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$800(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$900(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$800(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$1100(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$900(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$1100(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 192
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$900(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$1100(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    return-void

    .line 172
    :cond_2
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;

    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-direct {v1, v2, v4}, Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;-><init>(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/QuickSearchActivity$1;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$802(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_1

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$LocalSearchRunnable;

    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity$4;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-direct {v1, v2, v4}, Lcom/vkontakte/android/QuickSearchActivity$LocalSearchRunnable;-><init>(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/QuickSearchActivity$1;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$1102(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_2
.end method
