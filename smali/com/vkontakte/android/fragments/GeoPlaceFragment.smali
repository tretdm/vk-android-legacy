.class public Lcom/vkontakte/android/fragments/GeoPlaceFragment;
.super Landroid/app/Fragment;
.source "GeoPlaceFragment.java"


# instance fields
.field private att:Lcom/vkontakte/android/GeoAttachment;

.field private currentRequest:Lcom/vkontakte/android/APIRequest;

.field private groupPhoto:Ljava/lang/String;

.field private groupStatus:Ljava/lang/String;

.field private mapView:Lcom/google/android/gms/maps/MapView;

.field private noMaps:Z

.field private place:Lcom/vkontakte/android/GeoPlace;

.field private userPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupPhoto:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupStatus:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->userPhotos:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->noMaps:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoPlace;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Lcom/vkontakte/android/GeoPlace;)Lcom/vkontakte/android/GeoPlace;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GeoPlaceFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/GeoPlace;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoAttachment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GeoPlaceFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupPhoto:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->userPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GeoPlaceFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->userPhotos:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$502(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GeoPlaceFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GeoPlaceFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->updateUserPhotos()V

    return-void
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->updateFieldsVisibility()V

    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 274
    new-instance v0, Lcom/vkontakte/android/api/PlacesGetInfo;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget v1, v1, Lcom/vkontakte/android/GeoAttachment;->id:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/PlacesGetInfo;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PlacesGetInfo;->setCallback(Lcom/vkontakte/android/api/PlacesGetInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 297
    return-void
.end method

.method private updateFieldsVisibility()V
    .locals 7

    .prologue
    const v6, 0x7f08011f

    const v5, 0x7f08011e

    const v4, 0x7f08011d

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    iget v0, v0, Lcom/vkontakte/android/GeoPlace;->checkins:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    iget-object v0, v0, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    iget-object v0, v0, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 230
    goto :goto_0

    :cond_2
    move v0, v2

    .line 231
    goto :goto_1

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateUserPhotos()V
    .locals 6

    .prologue
    const/high16 v5, 0x420c0000    # 35.0f

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->userPhotos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 241
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 242
    .local v1, "iv":Landroid/widget/ImageView;
    const v3, 0x7f0201ec

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 244
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 245
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    const v4, 0x7f080120

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->updateVisiblePhotos()V

    .line 248
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 271
    return-void
.end method

.method private updateVisiblePhotos()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/GeoPlaceFragment$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$9;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 227
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 56
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GeoAttachment;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    .line 57
    const v0, 0x7f0d01fb

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 59
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.google.android.apps.maps"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d015e

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d015f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01d5

    new-instance v2, Lcom/vkontakte/android/fragments/GeoPlaceFragment$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$3;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0073

    new-instance v2, Lcom/vkontakte/android/fragments/GeoPlaceFragment$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$2;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/GeoPlaceFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$1;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->noMaps:Z

    .line 88
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 207
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->updateVisiblePhotos()V

    .line 208
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->loadData()V

    .line 195
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f08011c

    const v10, 0x7f08011b

    const v9, 0x7f08011a

    const v8, 0x7f080119

    const/4 v5, 0x0

    .line 91
    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->noMaps:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 177
    :goto_0
    return-object v2

    .line 92
    :cond_0
    const v2, 0x7f030060

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.google.android.apps.maps"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 95
    :cond_2
    new-instance v2, Lcom/vkontakte/android/fragments/GeoPlaceFragment$4;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$4;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 100
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2, p3}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    .line 106
    .local v1, "map":Lcom/google/android/gms/maps/GoogleMap;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 108
    new-instance v2, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v4, v4, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-object v6, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v6, v6, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 109
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v4, v4, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-object v6, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v6, v6, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 111
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    const v3, 0x7f08011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    const v3, 0x7f080121

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->updateUserPhotos()V

    .line 116
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->updateFieldsVisibility()V

    .line 118
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checkin"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/GeoPlaceFragment$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$6;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :goto_3
    new-instance v0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$7;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    .line 164
    .local v0, "clickListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    const v3, 0x7f080118

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    const v3, 0x7f080120

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/GeoPlaceFragment$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$8;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    goto/16 :goto_0

    .line 114
    .end local v0    # "clickListener":Landroid/view/View$OnClickListener;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    iget v4, v4, Lcom/vkontakte/android/GeoPlace;->checkins:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 153
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 103
    .end local v1    # "map":Lcom/google/android/gms/maps/GoogleMap;
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 203
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 301
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 303
    :cond_0
    iput-object v1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    .line 304
    iput-object v1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 305
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 182
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 184
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 190
    :cond_0
    return-void
.end method
