.class Lcom/vkontakte/android/NotificationsView$NotificationsAdapter$1;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Lcom/vkontakte/android/NewsItemView$OnInfoUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$NotificationsAdapter$1;->this$1:Lcom/vkontakte/android/NotificationsView$NotificationsAdapter;

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoUpdate(Lcom/vkontakte/android/NewsItemView;Lcom/vkontakte/android/NewsEntry;)V
    .locals 7
    .param p1, "view"    # Lcom/vkontakte/android/NewsItemView;
    .param p2, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/16 v2, 0xf

    const/16 v1, 0xa

    const v6, 0x7f090114

    const v4, 0x7f090113

    const/4 v5, 0x0

    .line 744
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p1, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, 0x7f0200c7

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 746
    invoke-virtual {p1, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, 0x7f0200c8

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 747
    invoke-virtual {p1, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 748
    invoke-virtual {p1, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, 0x7f0201b7

    invoke-virtual {v0, v3, v5, v5, v5}, Lcom/vkontakte/android/ui/OverlayTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 755
    :goto_0
    invoke-virtual {p1, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v0, p2, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    int-to-float v0, v0

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iget v0, p2, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    int-to-float v0, v0

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    invoke-virtual {v3, v4, v5, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 757
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 758
    invoke-virtual {p1, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, 0x7f0200c7

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 759
    invoke-virtual {p1, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, 0x7f0200c8

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 760
    invoke-virtual {p1, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 761
    invoke-virtual {p1, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, 0x7f0201ba

    invoke-virtual {v0, v3, v5, v5, v5}, Lcom/vkontakte/android/ui/OverlayTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 768
    :goto_3
    invoke-virtual {p1, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v0, p2, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    if-lez v0, :cond_4

    move v0, v1

    :goto_4
    int-to-float v0, v0

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    if-lez v4, :cond_5

    :goto_5
    int-to-float v1, v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v3, v0, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 769
    return-void

    .line 750
    :cond_0
    invoke-virtual {p1, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, 0x7f0200c6

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 751
    invoke-virtual {p1, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, 0x7f0200ca

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 752
    invoke-virtual {p1, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, -0x666667

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 753
    invoke-virtual {p1, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, 0x7f0201b6

    invoke-virtual {v0, v3, v5, v5, v5}, Lcom/vkontakte/android/ui/OverlayTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 755
    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    .line 763
    :cond_3
    invoke-virtual {p1, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, 0x7f0200c6

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 764
    invoke-virtual {p1, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, 0x7f0200ca

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 765
    invoke-virtual {p1, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, -0x666667

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 766
    invoke-virtual {p1, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/OverlayTextView;

    const v3, 0x7f0201b9

    invoke-virtual {v0, v3, v5, v5, v5}, Lcom/vkontakte/android/ui/OverlayTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 768
    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method
