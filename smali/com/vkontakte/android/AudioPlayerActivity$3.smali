.class Lcom/vkontakte/android/AudioPlayerActivity$3;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    .prologue
    const v9, 0x7f090089

    const v1, 0x7f090087

    const/16 v8, 0x13

    const v5, 0x7f090088

    const/4 v4, 0x0

    .line 125
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "add":I
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v4, v6, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 129
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 130
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v6

    sub-int v6, v3, v6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v8, :cond_4

    move v3, v4

    :goto_0
    int-to-float v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v6, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 131
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 134
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3, v9}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 135
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v8, :cond_1

    .line 136
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3, v9}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 137
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3, v9}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    .line 142
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_3

    .line 143
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 144
    .local v1, "id":I
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 145
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    neg-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 146
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$3;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .end local v1    # "id":I
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 130
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const/16 v3, 0x10

    goto :goto_0

    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    move v1, v5

    .line 143
    goto :goto_1
.end method
