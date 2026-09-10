.class public Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "PhotoAlbumsListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;
    }
.end annotation


# static fields
.field private static final SELECT_RESULT:I = 0x2066


# instance fields
.field private newsView:Lcom/vkontakte/android/NewsView;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private pagerWrap:Landroid/widget/LinearLayout;

.field private showCreate:Z

.field private tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

.field private uid:I

.field private view:Lcom/vkontakte/android/PhotoAlbumsView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->showCreate:Z

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->newsView:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)Lcom/vkontakte/android/PhotoAlbumsView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->showCreate:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->doCreateAlbum(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->doEditAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;I)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->doDelete(I)V

    return-void
.end method

.method private doCreateAlbum(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "descr"    # Ljava/lang/String;
    .param p4, "privacy"    # I

    .prologue
    .line 197
    new-instance v0, Lcom/vkontakte/android/api/PhotosCreateAlbum;

    if-gez p1, :cond_0

    .end local p1    # "uid":I
    :goto_0
    invoke-direct {v0, p2, p3, p4, p1}, Lcom/vkontakte/android/api/PhotosCreateAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 198
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$5;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosCreateAlbum;->setCallback(Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 212
    return-void

    .line 197
    .restart local p1    # "uid":I
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private doDelete(I)V
    .locals 2
    .param p1, "aid"    # I

    .prologue
    .line 303
    new-instance v1, Lcom/vkontakte/android/api/PhotosDeleteAlbum;

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    neg-int v0, v0

    :goto_0
    invoke-direct {v1, p1, v0}, Lcom/vkontakte/android/api/PhotosDeleteAlbum;-><init>(II)V

    .line 304
    new-instance v0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$8;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$8;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;I)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/PhotosDeleteAlbum;->setCallback(Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 316
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 317
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doEditAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 6
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 215
    new-instance v0, Lcom/vkontakte/android/api/PhotosEditAlbum;

    iget v1, p1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    iget-object v2, p1, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    iget v4, p1, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    iget v5, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    if-gez v5, :cond_0

    iget v5, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/PhotosEditAlbum;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 216
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$6;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Lcom/vkontakte/android/api/PhotoAlbum;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosEditAlbum;->setCallback(Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 230
    return-void

    .line 215
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private showCreateBox(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 9
    .param p1, "a"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    const/4 v8, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f030035

    invoke-static {v4, v5, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 151
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    if-gez v4, :cond_0

    const v4, 0x7f0900b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_0
    const v4, 0x7f0900b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 153
    .local v2, "sp":Landroid/widget/Spinner;
    new-instance v0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$2;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x1090008

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$2;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 158
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 159
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 160
    if-eqz p1, :cond_1

    .line 161
    const v4, 0x7f0900af

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const v4, 0x7f0900b0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget v4, p1, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 165
    :cond_1
    new-instance v5, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    if-nez p1, :cond_2

    const v4, 0x7f0800c4

    :goto_0
    invoke-virtual {v5, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 167
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 168
    if-nez p1, :cond_3

    const v4, 0x7f08013c

    :goto_1
    new-instance v6, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;

    invoke-direct {v6, p0, v3, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Landroid/view/View;Lcom/vkontakte/android/api/PhotoAlbum;)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 184
    const v5, 0x7f080041

    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 185
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 186
    .local v1, "dlg":Landroid/app/AlertDialog;
    new-instance v4, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$4;

    invoke-direct {v4, p0, v3}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$4;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 193
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 194
    return-void

    .line 166
    .end local v1    # "dlg":Landroid/app/AlertDialog;
    :cond_2
    const v4, 0x7f0800e3

    goto :goto_0

    .line 168
    :cond_3
    const v4, 0x7f0800a0

    goto :goto_1
.end method


# virtual methods
.method public deleteAlbum(I)V
    .locals 3
    .param p1, "aid"    # I

    .prologue
    .line 283
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    const v1, 0x7f0800e1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 285
    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    const v0, 0x1080027

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 287
    const v1, 0x7f08004e

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$7;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 293
    const v1, 0x7f08004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 295
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public editAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 0
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->showCreateBox(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 300
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 344
    const/16 v0, 0x2066

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 346
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 348
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 8
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 61
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 63
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "uid"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "albums"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    .line 67
    .local v0, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "title"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "title"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "news"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 75
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;)V

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 76
    new-instance v1, Lcom/vkontakte/android/NewsView;

    invoke-direct {v1, p1, v3}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->newsView:Lcom/vkontakte/android/NewsView;

    .line 77
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->newsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->initPhotos()V

    .line 78
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->newsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 79
    new-instance v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 80
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v4, 0x7f060015

    invoke-virtual {v1, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setBackgroundResource(I)V

    .line 81
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v4, 0x7f060014

    invoke-virtual {v1, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 82
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 83
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v4, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$1;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)V

    invoke-virtual {v1, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 102
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pagerWrap:Landroid/widget/LinearLayout;

    .line 103
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pagerWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pagerWrap:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v1, v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 105
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pagerWrap:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4, v6, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 106
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->showCreate:Z

    .line 109
    :cond_0
    new-instance v4, Lcom/vkontakte/android/PhotoAlbumsView;

    iget v5, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "user_name_ins"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "select_album"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    invoke-direct {v4, p1, v5, v1, v2}, Lcom/vkontakte/android/PhotoAlbumsView;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    .line 110
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->onActivate()V

    .line 111
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    iput-object p0, v1, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    .line 112
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->setHasOptionsMenu(Z)V

    .line 113
    return-void

    .line 71
    :cond_1
    const v1, 0x7f080173

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 109
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 121
    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->clear()V

    .line 122
    const v0, 0x7f0e0008

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 123
    const v0, 0x7f09021a

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->showCreate:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    neg-int v0, v0

    invoke-static {v0}, Lcom/vkontakte/android/data/Groups;->isGroupAdmin(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "select"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "select_album"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 124
    return-void

    .line 123
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pagerWrap:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pagerWrap:Landroid/widget/LinearLayout;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->removeAllTabs()V

    .line 117
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 118
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 127
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09021a

    if-ne v0, v1, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->showCreateBox(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 130
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->onDeactivate()V

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->onPause()V

    .line 137
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->onActivate()V

    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->onResume()V

    .line 143
    return-void
.end method

.method public openAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 8
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    const/16 v7, 0xe

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 321
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "select_album"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 323
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "album"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 325
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 341
    .end local v6    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 328
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v1, "args":Landroid/os/Bundle;
    const-string v0, "album"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 330
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "select"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 331
    const-string v0, "PhotoListFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_1

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "zte"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 333
    :cond_2
    const-string v0, "select"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v0, "class"

    const-string v2, "PhotoListFragment"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v0, "args"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 337
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_3

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 338
    const-string v0, "overlaybar"

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    :cond_3
    const/16 v0, 0x2066

    invoke-virtual {p0, v6, v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
