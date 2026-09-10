.class Lcom/vkontakte/android/NotificationsView$ViewHolder;
.super Ljava/lang/Object;
.source "NotificationsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NotificationsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field actionIcon:Landroid/widget/ImageView;

.field info:Landroid/widget/TextView;

.field link:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

.field postPhoto:Landroid/widget/ImageView;

.field text:Landroid/widget/TextView;

.field userPhoto:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    const v0, 0x7f090118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    .line 935
    const v0, 0x7f090119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    .line 936
    const v0, 0x7f090120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView$ViewHolder;->actionIcon:Landroid/widget/ImageView;

    .line 937
    const v0, 0x7f09011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView$ViewHolder;->name:Landroid/widget/TextView;

    .line 938
    const v0, 0x7f09011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView$ViewHolder;->text:Landroid/widget/TextView;

    .line 939
    const v0, 0x7f09011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView$ViewHolder;->info:Landroid/widget/TextView;

    .line 940
    const v0, 0x7f09011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView$ViewHolder;->link:Landroid/widget/TextView;

    .line 941
    const v0, 0x7f09011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoStripView;

    iput-object v0, p0, Lcom/vkontakte/android/NotificationsView$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    .line 942
    return-void
.end method
