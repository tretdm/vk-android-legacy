.class public Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;
.super Lcom/vkontakte/android/fragments/DarkBarFragment;
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

.field private showCreate:Z

.field private tabListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

.field private uid:I

.field private view:Lcom/vkontakte/android/PhotoAlbumsView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/DarkBarFragment;-><init>()V

    .line 47
    new-instance v0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$1;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->tabListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->showCreate:Z

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->newsView:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)Lcom/vkontakte/android/PhotoAlbumsView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->showCreate:Z

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->doCreateAlbum(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->doEditAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;I)V
    .locals 0

    .prologue
    .line 306
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
    .line 210
    new-instance v0, Lcom/vkontakte/android/api/PhotosCreateAlbum;

    if-gez p1, :cond_0

    .end local p1    # "uid":I
    :goto_0
    invoke-direct {v0, p2, p3, p4, p1}, Lcom/vkontakte/android/api/PhotosCreateAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 211
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$6;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosCreateAlbum;->setCallback(Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 225
    return-void

    .line 210
    .restart local p1    # "uid":I
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private doDelete(I)V
    .locals 2
    .param p1, "aid"    # I

    .prologue
    .line 307
    new-instance v1, Lcom/vkontakte/android/api/PhotosDeleteAlbum;

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    neg-int v0, v0

    :goto_0
    invoke-direct {v1, p1, v0}, Lcom/vkontakte/android/api/PhotosDeleteAlbum;-><init>(II)V

    .line 308
    new-instance v0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$9;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$9;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;I)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/PhotosDeleteAlbum;->setCallback(Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 320
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 321
    return-void

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doEditAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 6
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 228
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

    .line 229
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$7;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Lcom/vkontakte/android/api/PhotoAlbum;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosEditAlbum;->setCallback(Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 241
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 243
    return-void

    .line 228
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private showCreateBox(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 9
    .param p1, "a"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    const/4 v8, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f03002b

    invoke-static {v4, v5, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 164
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    if-gez v4, :cond_0

    const v4, 0x7f080095

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_0
    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 166
    .local v2, "sp":Landroid/widget/Spinner;
    new-instance v0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x1090008

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$3;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 171
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 172
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 173
    if-eqz p1, :cond_1

    .line 174
    const v4, 0x7f080093

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const v4, 0x7f080094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget v4, p1, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 178
    :cond_1
    new-instance v5, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    if-nez p1, :cond_2

    const v4, 0x7f0600aa

    :goto_0
    invoke-virtual {v5, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 180
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 181
    if-nez p1, :cond_3

    const v4, 0x7f060123

    :goto_1
    new-instance v6, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$4;

    invoke-direct {v6, p0, v3, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$4;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Landroid/view/View;Lcom/vkontakte/android/api/PhotoAlbum;)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 197
    const v5, 0x7f060027

    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 198
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 199
    .local v1, "dlg":Landroid/app/AlertDialog;
    new-instance v4, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$5;

    invoke-direct {v4, p0, v3}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$5;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 206
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 207
    return-void

    .line 179
    .end local v1    # "dlg":Landroid/app/AlertDialog;
    :cond_2
    const v4, 0x7f0600c9

    goto :goto_0

    .line 181
    :cond_3
    const v4, 0x7f060086

    goto :goto_1
.end method


# virtual methods
.method public deleteAlbum(I)V
    .locals 3
    .param p1, "aid"    # I

    .prologue
    .line 287
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    const v1, 0x7f0600c7

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 289
    const v1, 0x7f0600c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    const v0, 0x1080027

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 291
    const v1, 0x7f060034

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$8;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$8;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 297
    const v1, 0x7f060035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 299
    return-void

    .line 290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public editAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 0
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->showCreateBox(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 304
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 346
    const/16 v0, 0x2066

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 348
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 350
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 9
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const v7, 0x7f06015a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/DarkBarFragment;->onAttach(Landroid/app/Activity;)V

    .line 78
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "uid"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    .line 80
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    .line 81
    .local v0, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "news"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v5, v2}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 82
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "title"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "title"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "news"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 90
    .local v1, "tab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    const v2, 0x7f06003d

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 91
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->tabListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 93
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 94
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 95
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 96
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->tabListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 98
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 99
    new-instance v2, Landroid/support/v4/view/ViewPager;

    invoke-direct {v2, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 100
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;)V

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 101
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$2;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$2;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)V

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 121
    new-instance v2, Lcom/vkontakte/android/NewsView;

    const v5, 0x7f03004f

    invoke-direct {v2, p1, v5}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->newsView:Lcom/vkontakte/android/NewsView;

    .line 122
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->newsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->initPhotos()V

    .line 123
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->newsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 124
    iput-boolean v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->showCreate:Z

    .line 127
    .end local v1    # "tab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    :cond_0
    new-instance v5, Lcom/vkontakte/android/PhotoAlbumsView;

    iget v6, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->uid:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "user_name_ins"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "select_album"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    invoke-direct {v5, p1, v6, v2, v3}, Lcom/vkontakte/android/PhotoAlbumsView;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    .line 128
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoAlbumsView;->onActivate()V

    .line 129
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    iput-object p0, v2, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    .line 130
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->setHasOptionsMenu(Z)V

    .line 131
    return-void

    :cond_1
    move v2, v3

    .line 81
    goto/16 :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    move v3, v4

    .line 127
    goto :goto_2
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 134
    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->clear()V

    .line 135
    const v0, 0x7f0e0007

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 136
    const v0, 0x7f08018f

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

    .line 137
    return-void

    .line 136
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
    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->pager:Landroid/support/v4/view/ViewPager;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 140
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f08018f

    if-ne v0, v1, :cond_0

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->showCreateBox(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 143
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/vkontakte/android/fragments/DarkBarFragment;->onPause()V

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->onDeactivate()V

    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->onPause()V

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/vkontakte/android/fragments/DarkBarFragment;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->onActivate()V

    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->onResume()V

    .line 156
    return-void
.end method

.method public openAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 4
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "select_album"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "album"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 329
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 343
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "album"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 334
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "select"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 335
    const-string v2, "PhotoListFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 337
    :cond_1
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "PhotoListFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 341
    const/16 v2, 0x2066

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
