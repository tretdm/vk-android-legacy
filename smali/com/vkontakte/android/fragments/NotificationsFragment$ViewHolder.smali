.class Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/NotificationsFragment;
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
    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    const v0, 0x7f08002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->userPhoto:Landroid/widget/ImageView;

    .line 725
    const v0, 0x7f08002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->postPhoto:Landroid/widget/ImageView;

    .line 726
    const v0, 0x7f080102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->actionIcon:Landroid/widget/ImageView;

    .line 727
    const v0, 0x7f08002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->name:Landroid/widget/TextView;

    .line 728
    const v0, 0x7f0800fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->text:Landroid/widget/TextView;

    .line 729
    const v0, 0x7f0800fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->info:Landroid/widget/TextView;

    .line 730
    const v0, 0x7f0800ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->link:Landroid/widget/TextView;

    .line 731
    const v0, 0x7f080101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoStripView;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;->photoStrip:Lcom/vkontakte/android/ui/PhotoStripView;

    .line 732
    return-void
.end method
