.class Lcom/vkontakte/android/FragmentWrapperActivity$2;
.super Ljava/lang/Object;
.source "FragmentWrapperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FragmentWrapperActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FragmentWrapperActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$2;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 292
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar_title"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 293
    .local v0, "btnId":I
    if-nez v0, :cond_0

    const v0, 0x7f09002c

    .line 294
    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/FragmentWrapperActivity$2;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    iget-object v3, p0, Lcom/vkontakte/android/FragmentWrapperActivity$2;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/FragmentWrapperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lcom/vkontakte/android/FragmentWrapperActivity;->access$2(Lcom/vkontakte/android/FragmentWrapperActivity;Landroid/widget/TextView;)V

    .line 295
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar_subtitle"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 296
    if-nez v0, :cond_2

    const v0, 0x7f09002d

    .line 297
    :cond_2
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/FragmentWrapperActivity$2;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    iget-object v3, p0, Lcom/vkontakte/android/FragmentWrapperActivity$2;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/FragmentWrapperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lcom/vkontakte/android/FragmentWrapperActivity;->access$2(Lcom/vkontakte/android/FragmentWrapperActivity;Landroid/widget/TextView;)V

    .line 298
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_5

    .line 299
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 300
    if-nez v0, :cond_4

    const v0, 0x7f09003c

    .line 301
    :cond_4
    if-eqz v0, :cond_5

    .line 302
    iget-object v3, p0, Lcom/vkontakte/android/FragmentWrapperActivity$2;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/FragmentWrapperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 303
    .local v2, "vg":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_6

    .line 312
    .end local v0    # "btnId":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_5
    :goto_1
    return-void

    .line 304
    .restart local v0    # "btnId":I
    .restart local v1    # "i":I
    .restart local v2    # "vg":Landroid/view/ViewGroup;
    :cond_6
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7

    .line 305
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 311
    .end local v0    # "btnId":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 303
    .restart local v0    # "btnId":I
    .restart local v1    # "i":I
    .restart local v2    # "vg":Landroid/view/ViewGroup;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
