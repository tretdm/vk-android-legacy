.class Lcom/vkontakte/android/WallActivity$2;
.super Ljava/lang/Object;
.source "WallActivity.java"

# interfaces
.implements Lcom/vkontakte/android/WallView$OnDataLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallActivity$2;->this$0:Lcom/vkontakte/android/WallActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoaded([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ[II)V
    .locals 6
    .param p1, "name"    # [Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "online"    # Z
    .param p5, "canWrite"    # Z
    .param p6, "_isAdmin"    # Z
    .param p7, "counters"    # [I
    .param p8, "type"    # I

    .prologue
    const v5, 0x7f060197

    const/4 v4, 0x1

    .line 127
    iget-object v2, p0, Lcom/vkontakte/android/WallActivity$2;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v2, v4}, Lcom/vkontakte/android/WallActivity;->access$2(Lcom/vkontakte/android/WallActivity;Z)V

    .line 128
    array-length v2, p1

    if-le v2, v4, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/WallActivity$2;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/WallActivity;->access$3(Lcom/vkontakte/android/WallActivity;)Lcom/vkontakte/android/ProfilePhotosView;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ProfilePhotosView;->setUserName(Ljava/lang/String;)V

    .line 129
    :cond_0
    aget v2, p7, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/WallActivity$2;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/WallActivity;->access$3(Lcom/vkontakte/android/WallActivity;)Lcom/vkontakte/android/ProfilePhotosView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ProfilePhotosView;->setShowUserPhotos(Z)V

    .line 130
    :cond_1
    const/4 v2, -0x1

    if-eq p8, v2, :cond_4

    .line 131
    const v1, 0x7f09019c

    .line 132
    .local v1, "res":I
    if-ne p8, v4, :cond_2

    const v1, 0x7f09019d

    .line 133
    :cond_2
    const/4 v2, 0x2

    if-ne p8, v2, :cond_3

    const v1, 0x7f09019e

    .line 134
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/WallActivity$2;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 136
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 137
    iget-object v2, p0, Lcom/vkontakte/android/WallActivity$2;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "res":I
    :cond_4
    return-void
.end method
