.class Lcom/vkontakte/android/SettingsActivity$AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation


# instance fields
.field a:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/vkontakte/android/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/SettingsActivity;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p2, "aa"    # Landroid/widget/ListAdapter;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/vkontakte/android/SettingsActivity$AdapterWrapper;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/vkontakte/android/SettingsActivity$AdapterWrapper;->a:Landroid/widget/ListAdapter;

    .line 345
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$AdapterWrapper;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$AdapterWrapper;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$AdapterWrapper;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$AdapterWrapper;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$AdapterWrapper;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$AdapterWrapper;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$AdapterWrapper;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
